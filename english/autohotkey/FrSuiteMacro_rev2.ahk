#Requires AutoHotkey v2.0
#SingleInstance Force ; the older hidden background instance of the script is instantly terminated and replaced by the new one
SetTitleMatchMode(2) ; Allow partial title matches

configFile := "config.ini"

; Read paths from the INI file
appPath := IniRead(configFile, "Paths", "SuitePath")
ScreenshotsPath := IniRead(configFile, "Paths", "ScreenshotsPath")

appName := "FrSky Suite.exe"  ; app's process name

if ProcessExist(appName) {
    ProcessClose(appName)
    MsgBox("Closed " . appName, "Status", 64)
} 

; Run the executable execution loop
try {
    ; --- Launch FrSky Suite ---
    Run(appPath)
    
    ; Wait for it to load
    Sleep(5000)

    ; --- Close alert if it exists ---
    Send("{Tab}{Enter}")
    Sleep(300) ; Ensure alert closes

    ; --- Resize window (strictly no moving) ---
    targetTitle := "FrSky Suite"

    if WinWait(targetTitle, , 10) {
        WinRestore(targetTitle) ; Ensure not maximized
        WinActivate(targetTitle) ; Bring to front
        Sleep(100) ; Let activation settle

        ; Use "unset" for X and Y so the window stays put, 
        ; and changes ONLY Width (1800) and Height (1040)
        WinMove(unset, unset, 1800, 1040, targetTitle)
        
        ; Give Windows 500ms to redraw the inner interface elements at the
        ; new larger resolution before snapping the screenshot.
        Sleep(500) 
    } else {
        MsgBox("Window '" targetTitle "' not found.")
        return
    }

    ; --- Screenshot Devices / Ethos / home with no radio connected ---
        ; Define the path and name for screenshot
        filePath := ScreenshotsPath "\suite-devices-ethos-home.png"
        
        ; Call the standalone save function
        SaveClipboardToPng(filePath)
    
} catch Error as err {
    MsgBox("Failed to run the script sequence.`nError: " err.Message)
}


/**
 * Global Function: Takes a screenshot, then saves the clipboard bitmap data to disk via a background PowerShell call.
 * @param {String} targetPath - The absolute destination file path.
 */
SaveClipboardToPng(targetPath) {
    A_Clipboard := "" ; Clear clipboard to ensure fresh data
    Send "!{PrintScreen}" ; Capture active window

    if !ClipWait(2.0, 1) {
        MsgBox("❌ Error: Clipboard timed out.")
        ;SetTimer(() => ToolTip(), -3000)
    }
    ;    Sleep(250) ; Critical delay to let Windows complete image streaming
        
    ; Ensure destination folder exists before calling PowerShell
    ;splitPos := InStr(targetPath, "\", , -1)
    ;if (splitPos > 0) {
    ;    targetDir := SubStr(targetPath, 1, splitPos - 1)
    ;    if !DirExist(targetDir)
    ;        DirCreate(targetDir)
    ;}

    ; Formulate clean one-line PowerShell string
    psCommand := "(Get-Clipboard -Format Image).Save('" targetPath "', [System.Drawing.Imaging.ImageFormat]::Png)"

    ; Execute the call completely hidden
    RunWait('powershell -NoProfile -Command "Add-Type -AssemblyName System.Drawing; ' psCommand '"', , "Hide")

    ; Verify file creation
    if FileExist(targetPath) {
        SoundBeep(1000, 200)
        MsgBox("💾 Saved: " targetPath)

    } else {
        SoundBeep(2000, 100)
        Sleep(250)
        SoundBeep(2000, 100)
        MsgBox("❌ Error: PowerShell failed to save image to." targetPath)
    }
    
    ; Setup auto-closing tooltips safely
    ; SetTimer(() => ToolTip(), -2000)
}
