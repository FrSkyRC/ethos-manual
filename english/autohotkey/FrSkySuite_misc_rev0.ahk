#Requires AutoHotkey v2.0
#SingleInstance Force ; the older hidden background instance of the script is instantly terminated and replaced by the new one
SetTitleMatchMode(2) ; Allow partial title matches
#Include ImagePut.ahk

; SetKeyDelay Delay, PressDuration (in milliseconds)
; This sets a 100ms delay between keys, and holds each key down for 30ms
SetKeyDelay 250, 30 
;SendMode "Event" ; Forces all standard 'Send' commands to behave like 'SendEvent'

configFile := "config.ini"

; Read paths from the INI file
appPath := IniRead(configFile, "Paths", "SuitePath")
ScreenshotsPath := IniRead(configFile, "Paths", "ScreenshotsPath")

appName := "FrSky Suite Demo.exe"  ; app's process name

if ProcessExist(appName) {
    ProcessClose(appName)
    MsgBox("Closed " . appName, "Status", 64)
} 

; delete previous screenshots from this script
FileDelete(ScreenshotsPath . "\suite-misc*.png")

; Run the executable execution loop
try {
    ; --- Launch FrSky Suite ---
    Run(appPath)
    
    ; Wait for it to load
    Sleep(5000)

    ; --- Close alert if it exists ---
    ;SendEvent("{Tab}{Enter}")
    ;Sleep(300) ; Ensure alert closes
/*
    ; *** Enable the mock radio ***
        SendEvent "{Tab}" ; switch to left content page
        Sleep(300)
        ;SendEvent "{Down 12}" ; step down to 'Suite settings' -- use during debug
        Send "{Down 12}" ; step down to 'Suite settings'
        Sleep(250) 
        SendEvent "{Enter}" ; open suite settings
        Sleep(500) 
        SendEvent "{Tab}" ; switch to right content page
        Sleep(250) 
        ;SendEvent "{Down 6}" ; step to mock radio settings
        Send "{Down 6}" ; step to mock radio settings
        SendEvent "{Enter}" ; open mock radio settings
        SendEvent "{Down}" ; step to mock radio enable
        SendEvent "{Enter}" ; enable mock radio
        ; check if mock radio is in the correct Off state
        ;Result := MsgBox("Is the mock radio enabled?", "Confirmation", "y/n")
        ;if (Result = "No") {
        ;    MsgBox("Please close Suite and start the script again.")
        ;    ExitApp  ; Terminates the entire script completely
        ;}
        ; --- The script continues here if "Yes" is clicked ---
        SendEvent "{Tab}" ; switch to left nav panel
        Send "{Up 14}" ; step back to Ethos tab
        Sleep(250) 
        SendEvent "{Enter}" ; open Ethos tab
*/
    ; *** do the ECOS section ***
    ; ***
        SendEvent "{Tab}" ; switch to left content page
        ;SendEvent "{Down 6}" ; step to 'ECOS' button
        Send "{Down 6}" ; step to 'ECOS' button
        Sleep(250) 
        SendEvent "{Enter}" ; open 'ECOS'
        Sleep(1000) 
  
    ; --- Screenshot Devices / ECOS page  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-misc-devices-ecos.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

    ; *** do the Aegis section ***
    ; ***
        Send "{Down}" ; step to 'AEGIS' button
        Sleep(250) 
        SendEvent "{Enter}" ; open 'AEGIS'
        Sleep(1000) ; wait for website to load
  
    ; --- Screenshot Devices / AEGIS page  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-misc-devices-aegis.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)


    ; *** do the Log viewer section ***
    ; ***
        Send "{Down}" ; step to 'Log viewer' button
        Sleep(250) 
        SendEvent "{Enter}" ; open 'Log viewer'
        Sleep(1000) ; wait 
  
    ; --- Screenshot Tools / Log viewer page  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-misc-log viewer.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

        SendEvent "{Tab}" ; switch to left content page
        Send "{Down}" ; step to previous log file
        Sleep(250) 
        SendEvent "{Enter}" ; select it
        Sleep(1000) ; wait 
  
    ; --- Screenshot Tools / Log viewer page with log ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-misc-log viewer-log.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

        SendEvent "{Down}" ; step around to exit
        SendEvent "{Enter}" ; exit to log viewer main 
        SendEvent "{Tab}" ; switch to left content page and home


    ; *** do the Product List section ***
    ; ***
        ;SendEvent "{Down 9}" ; step to 'Product List' button
        Send "{Down 9}" ; step to 'Product List' button
        Sleep(250) 
        SendEvent "{Enter}" ; open 'Product List'
        Sleep(1000) ; wait for website to load
  
    ; --- Screenshot Product List page  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-misc-product-list.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

    ; *** do the DFU Flasher section ***
    ; ***
        ;SendEvent "{Down 10}" ; step to 'DFU Flasher' button
        ;Send "{Down 10}" ; step to 'DFU Flasher' button
        SendEvent "{Down}" ; step to 'DFU Flasher' button
        Sleep(250) 
        SendEvent "{Enter}" ; open 'DFU Flasher'
        Sleep(1000) ; wait for website to load
  
    ; --- Screenshot DFU Flasher page  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-misc-dfu-flasher.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

        Sleep(12000) ; wait for dfu to fail detection
  
    ; --- Screenshot DFU Flasher page - no radio ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-misc-dfu-flasher-no-dfu-device.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

    ; *** do the Documentation section ***
    ; ***
        SendEvent "{Down}" ; step to 'Documentation' button
        ;Send "{Down}" ; step to 'Documentation' button
        Sleep(250) 
        SendEvent "{Enter}" ; open 'Documentation'
        Sleep(1000) ; wait for website to load
  
    ; --- Screenshot Documentation page  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-misc-documentation.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

    ; *** do the Suite Settings section ***
    ; ***
        SendEvent "{Down}" ; step to 'Suite Settings' button
        ;Send "{Down}" ; step to 'Suite Settings' button
        Sleep(250) 
        SendEvent "{Enter}" ; open 'Suite Settings'
        Sleep(1000) ; wait for website to load
  
    ; --- Screenshot Devices / Suite Settings page  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-misc-suite-settings.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)


    ; *** Clean up back to start then close app
        ;SendEvent "{Tab}" ; switch to left content page
        ;SendEvent "{Enter}" ; back to Ethos

        MsgBox ("Script has completed.")
        ProcessClose(appName)
        ExitApp()


} catch Error as err {
    MsgBox("Failed to run the script sequence.`nError: " err.Message)
}

; Press Escape to instantly close the script
Esc::ExitApp()


/**
 * Captures the currently active window and saves it directly to disk.
 * Bypasses the clipboard entirely, verifies file creation, and alerts on failure.
 * @param {String} outputPath - The full file path where the image should be saved.
 * @returns {Boolean} - Returns true if the file exists on disk, false otherwise.
 */
CaptureActiveWindow(outputPath) {
    ; Delete an existing file at the path to prevent false positive checks
    if FileExist(outputPath) {
        FileDelete(outputPath)
    }

    try {
        ; "A" targets the active window natively via ImagePut
        ImagePutFile("A", outputPath)
    } catch Error as err {
        MsgBox("Failed to capture screenshot.`n`nInternal Error: " err.Message, "Capture Error", "Iconx")
        return false
    }

    ; Explicit check: Verify the file actually exists on the hard drive
    if !FileExist(outputPath) {
        MsgBox("Failed to capture screenshot.`n`nThe file was not created at:`n" outputPath, "File Missing Error", "Iconx")
        return false
    }

    return true
}
