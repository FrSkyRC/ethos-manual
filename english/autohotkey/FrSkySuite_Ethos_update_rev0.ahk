#Requires AutoHotkey v2.0
#SingleInstance Force ; the older hidden background instance of the script is instantly terminated and replaced by the new one
SetTitleMatchMode(2) ; Allow partial title matches

configFile := "config.ini"

; Read paths from the INI file
appPath := IniRead(configFile, "Paths", "SuitePath")
ScreenshotsPath := IniRead(configFile, "Paths", "ScreenshotsPath")

appName := "FrSky Suite Demo.exe"  ; app's process name

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

    ; *** Screenshot Devices / Ethos / home with no radio connected ***
        ; Define the path and name for screenshot
        filePath := ScreenshotsPath "\suite-devices-ethos-home-no-radio.png"
        ; Call the standalone save function
        SaveClipboardToPng(filePath)

    ; *** Enable the mock radio ***
        Send "{Down 12}" ; step down to 'Suite settings'
        Sleep(500) 
        Send "{Enter}" ; open suite settings
        Sleep(500) 
        Send "{Tab}" ; switch to right content page
        Sleep(500) 
        Send "{Down}" ; step to mock radio settings
        Sleep(250) 
        Send "{Enter}" ; open mock radio settings
        Sleep(250) 
        Send "{Down}" ; step to mock radio enable
        Sleep(250) 
        Send "{Enter}" ; enable mock radio
        Sleep(250)
        ; check if mock radio is in the correct Off state
        Result := MsgBox("Is the mock radio enabled?", "Confirmation", "y/n")
        if (Result = "No") {
            MsgBox("Please close Suite and start the script again.")
            ExitApp  ; Terminates the entire script completely
        }
        ; --- The script continues here if "Yes" is clicked ---
        Send "{Tab}" ; switch to left nav panel
        Sleep(500) 
        Send "{Up 14}" ; step back to Ethos tab
        Sleep(500) 
        Send "{Enter}" ; open Ethos tab
        Sleep(500)         
        Sleep(500)       

        
    ; *** Screenshot Devices / Ethos / home with radio connected ***
        ; Define the path and name for screenshot
        filePath := ScreenshotsPath "\suite-devices-ethos-home-with-radio.png"        
        ; Call the standalone save function
        SaveClipboardToPng(filePath)
    
    ; *** do the firmware update section - first time around ***
    ; ***
        Send "{Tab}" ; switch to right content page
        Sleep(500) 
        ; focus will be on 'manage ethos'

        Send "{Enter}" ; open manage ethos
        Sleep(500) 
    
    ; --- Screenshot Devices / Ethos / manage ethos ---
        ; Define the path and name for screenshot
        filePath := ScreenshotsPath "\suite-devices-ethos-manage-ethos.png"        
        ; Call the standalone save function
        SaveClipboardToPng(filePath)
    
        Send "{Down 10}" ; step to firmware drop-down
        Sleep(500) 
        Send "{Enter}" ; open firmware drop-down
        Sleep(250) 
        Send "{Down 2}" ; step to 'Write firmware and system files"
        Sleep(250) 

    ; --- Screenshot Devices / Ethos / manage ethos ---
        ; Define the path and name for screenshot
        filePath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-update-fw-select.png"        
        ; Call the standalone save function
        SaveClipboardToPng(filePath)

        Send "{Enter}" ; yes to update fw and system files
        Sleep(250) 

    ; --- Screenshot Devices / Ethos / manage ethos ---
        ; Define the path and name for screenshot
        filePath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-update-fw.png"        
        ; Call the standalone save function
        SaveClipboardToPng(filePath)

        Send "{Up}" ; step back to update tab
        Sleep(500) 
        Send "{Enter}" ; update fw and system files
        Sleep(250) 
    
    ; --- Screenshot Devices / Ethos / manage ethos ---
        ; Define the path and name for screenshot
        filePath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-update-options.png"        
        ; Call the standalone save function
        SaveClipboardToPng(filePath)
    
        Send "{Tab 3}" ; switch focus to go-to-backup button
        Sleep(500) 
        Send "{Enter}" ; enable backup button
        Sleep(500) 

    ; *** Screenshot Devices / Ethos / manage ethos / backup page ***
    ; ***
        ; Define the path and name for screenshot
        filePath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-backup-page.png"        
        ; Call the standalone save function
        SaveClipboardToPng(filePath)
   
        Send "{Up}" ; scroll back around to backup
        Sleep(500) 
        Send "{Enter}" ; enable backup button
        Sleep(3000) 

    ; --- Screenshot Devices / Ethos / manage ethos / backup page  ---
        ; Define the path and name for screenshot
        filePath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-backup-enable.png"        
        ; Call the standalone save function
        SaveClipboardToPng(filePath)

        Send "{Down}" ; we're at the bottom scroll down and around to 'exit'
        Sleep(500) 
        Send "{Enter}" ; return to manage ethos
        Sleep(250) 

    ; *** do the firmware update section - second time around ***
    ; ***
        Send "{Down}" ; step to manage ethos button
        Sleep(500) 
        ; focus will be on 'manage ethos'
        Send "{Enter}" ; open manage ethos
        Sleep(500) 
        ;MsgBox("open manage ethos")    
    
        Send "{Down 10}" ; step to firmware drop-down
        Sleep(500) 
        ;MsgBox("step to firmware drop-down")    
        Send "{Enter}" ; open firmware drop-down
        Sleep(250) 
        ;MsgBox("open firmware drop-down")
        Send "{Down 2}" ; step to 'Write firmware and system files"
        Sleep(250) 
        ;MsgBox("step to fw and system files")

        Send "{Enter}" ; yes to update fw and system files
        Sleep(250) 
        ;MsgBox("yes to update fw and system files")

        Send "{Up}" ; step back to update tab
        Sleep(500) 
        ;MsgBox("step back to update tab")
        Send "{Enter}" ; update fw and system files
        Sleep(250) 
        ;MsgBox("update fw and system files")
    
        Send "{Tab 2}" ; switch focus to 'continue updating' button
        Sleep(500) 
        Send "{Enter}" ; enable 'continue updating' button
        Sleep(15000) ; wait for simulated firmware flash process


    ; --- Screenshot Devices / Ethos / manage ethos ---
        ; Define the path and name for screenshot
        filePath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-fw-update_successful.png"        
        ; Call the standalone save function
        SaveClipboardToPng(filePath)

        Send "{Tab}" ; switch focus to 'Close' button
        Sleep(250) 
        Send "{Enter}" ; accept fw-update_successful
        Sleep(250) 
        Send "{Up 8}" ; step back to exit
        Sleep(500) 
        Send "{Enter}" ; exit to devices / ethos home 
        Sleep(250) 


    ; *** do the backup & restore section ***
    ; ***
        Send "{Down 2}" ; step to 'backup & restore' button
        Sleep(250) 
        ; focus will be on 'backup & restore'
        Send "{Enter}" ; open 'backup & restore'
        Sleep(250) 
        Send "{Down 4}" ; step to 'restore data' button
        Sleep(250) 
        Send "{Enter}" ; open 'restore data'
        Sleep(250) 
  
    ; --- Screenshot Devices / Ethos / manage ethos / restore data page  ---
        ; Define the path and name for screenshot
        filePath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-backup-restore-data.png"        
        ; Call the standalone save function
        SaveClipboardToPng(filePath)

        Send "{Up 3}" ; step back to exit
        Sleep(250) 
        Send "{Enter}" ; exit to devices / ethos home 
        Sleep(250) 

    ; *** do the RF module section ***
    ; ***
        Send "{Down 4}" ; step to 'RF module' button
        Sleep(250) 

    ; --- Screenshot Devices / Ethos / manage ethos / RF module page select ---
        ; Define the path and name for screenshot
        filePath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-rf-module-select.png"        
        ; Call the standalone save function
        SaveClipboardToPng(filePath)

        Send "{Enter}" ; open 'RF module'
        Sleep(250) 
  
    ; --- Screenshot Devices / Ethos / manage ethos / RF module page  ---
        ; Define the path and name for screenshot
        filePath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-rf-module.png"        
        ; Call the standalone save function
        SaveClipboardToPng(filePath)

        Send "{Down}" ; step around to exit
        Sleep(250) 
        Send "{Enter}" ; exit to devices / ethos home 
        Sleep(250) 

    ; *** Disable the mock radio ***
        Send "{Tab}" ; switch to left content page
        Sleep(500) 
        Send "{Down 12}" ; step down to 'Suite settings'
        Sleep(500) 
        Send "{Enter}" ; open suite settings
        Sleep(500) 
        Send "{Tab}" ; switch to right content page
        Sleep(500) 
        Send "{Down}" ; step to mock radio settings
        Sleep(250) 
        Send "{Enter}" ; open mock radio settings
        Sleep(250) 
        Send "{Down}" ; step to mock radio enable
        Sleep(250) 
        Send "{Enter}" ; Devicesable mock radio
        Sleep(250)

    ; *** Clean up back to start then close app
        Send "{Tab}" ; switch to left content page
        Sleep(250) 
        Send "{Enter}" ; back to Ethos
        Sleep(250)
        MsgBox ("Script has completed.")
        ;WinClose('ahk_exe "FrSky Suite Demo.exe"') debug later
        ProcessClose(appName)
        ExitApp()

} catch Error as err {
    MsgBox("Failed to run the script sequence.`nError: " err.Message)
}

; Press Escape to instantly close the script
Esc::ExitApp()

/**
 * Global Function: Takes a screenshot, then saves the clipboard bitmap data to disk via a background PowerShell call.
 * @param {String} targetPath - The absolute destination file path.
 */
SaveClipboardToPng(targetPath) {
    A_Clipboard := "" ; Clear clipboard to ensure fresh data
    Send "!{PrintScreen}" ; Capture active window

    if !ClipWait(2.0, 1) {
        MsgBox("Error: Clipboard timed out.")
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
        ;SoundBeep(1000, 200)
        ;MsgBox("Screenshot Saved: " targetPath)

    } else {
        SoundBeep(2000, 100)
        Sleep(250)
        SoundBeep(2000, 100)
        MsgBox("Error: PowerShell failed to save image to." targetPath)
    }
    
    ; Setup auto-closing tooltips safely
    ; SetTimer(() => ToolTip(), -2000)
}

