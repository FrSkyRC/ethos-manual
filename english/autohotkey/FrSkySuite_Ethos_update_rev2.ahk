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

; optionally delete all previous screenshots
Result := MsgBox("Delete previous screenshots?", "Confirmation", "y/n")
if (Result = "Yes") {
    FileDelete(ScreenshotsPath . "\*.*")
}

; Run the executable execution loop
try {
    ; --- Launch FrSky Suite ---
    Run(appPath)
    
    ; Wait for it to load
    Sleep(5000)

    ; --- Close alert if it exists ---
    ;SendEvent("{Tab}{Enter}")
    ;Sleep(300) ; Ensure alert closes

    ; *** Screenshot Devices / Ethos / home with no radio connected ***
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-home-no-radio.png"
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

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
        SendEvent "{Down}" ; step to mock radio settings
        SendEvent "{Enter}" ; open mock radio settings
        SendEvent "{Down}" ; step to mock radio enable
        SendEvent "{Enter}" ; enable mock radio
        ; check if mock radio is in the correct Off state
        Result := MsgBox("Is the mock radio enabled?", "Confirmation", "y/n")
        if (Result = "No") {
            MsgBox("Please close Suite and start the script again.")
            ExitApp  ; Terminates the entire script completely
        }
        ; --- The script continues here if "Yes" is clicked ---
        SendEvent "{Tab}" ; switch to left nav panel
        Send "{Up 14}" ; step back to Ethos tab
        Sleep(250)
        SendEvent "{Enter}" ; open Ethos tab
        Sleep(1000)         

    ; *** Screenshot Devices / Ethos / home with radio connected ***
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-home-with-radio.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)
    
    ; *** do the firmware update section - first time around ***
    ; ***
        SendEvent "{Tab}" ; switch to right content page
        ; focus will be on 'manage ethos'

        SendEvent "{Enter}" ; open manage ethos
        Sleep(1000) ; wait 
    
    ; --- Screenshot Devices / Ethos / manage ethos ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)
    
        Send "{Down 10}" ; step to firmware drop-down
        Sleep(250)
        SendEvent "{Enter}" ; open firmware drop-down
        SendEvent "{Down 2}" ; step to 'Write firmware and system files"
        Sleep(1000) ; wait 

    ; --- Screenshot Devices / Ethos / manage ethos ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-update-fw-select.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

        SendEvent "{Enter}" ; yes to update fw and system files
        Sleep(1000) ; wait 

    ; --- Screenshot Devices / Ethos / manage ethos ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-update-fw.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

        SendEvent "{Up}" ; step back to update tab
        SendEvent "{Enter}" ; update fw and system files
        Sleep(1000) ; wait 
    
    ; --- Screenshot Devices / Ethos / manage ethos ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-update-options.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)
    
        SendEvent "{Tab 3}" ; switch focus to go-to-backup button
        SendEvent "{Enter}" ; enable backup button
        Sleep(1000) ; wait 

    ; *** Screenshot Devices / Ethos / manage ethos / backup page ***
    ; ***
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-backup-page.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)
   
        SendEvent "{Up}" ; scroll back around to backup
        SendEvent "{Enter}" ; enable backup button
        Sleep(3000) 

    ; --- Screenshot Devices / Ethos / manage ethos / backup page  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-backup-enable.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

        SendEvent "{Down}" ; we're at the bottom scroll down and around to 'exit'
        SendEvent "{Enter}" ; return to manage ethos

    ; *** do the firmware update section - second time around ***
    ; ***
        SendEvent "{Down}" ; step to manage ethos button
        ; focus will be on 'manage ethos'
        SendEvent "{Enter}" ; open manage ethos
        ;MsgBox("open manage ethos")    
    
        Send "{Down 10}" ; step to firmware drop-down
        Sleep(250)
        ;MsgBox("step to firmware drop-down")    
        SendEvent "{Enter}" ; open firmware drop-down
        ;MsgBox("open firmware drop-down")
        SendEvent "{Down 2}" ; step to 'Write firmware and system files"
        ;MsgBox("step to fw and system files")

        SendEvent "{Enter}" ; yes to update fw and system files
        ;MsgBox("yes to update fw and system files")

        SendEvent "{Up}" ; step back to update tab
        ;MsgBox("step back to update tab")
        SendEvent "{Enter}" ; update fw and system files
        ;MsgBox("update fw and system files")
    
        SendEvent "{Tab 2}" ; switch focus to 'continue updating' button
        SendEvent "{Enter}" ; enable 'continue updating' button
        Sleep(15000) ; wait for simulated firmware flash process


    ; --- Screenshot Devices / Ethos / manage ethos ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-fw-update_successful.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

        SendEvent "{Tab}" ; switch focus to 'Close' button
        SendEvent "{Enter}" ; accept fw-update_successful
        Send "{Up 8}" ; step back to exit
        SendEvent "{Enter}" ; exit to devices / ethos home 


    ; *** do the backup & restore section ***
    ; ***
        SendEvent "{Down 2}" ; step to 'backup & restore' button
        ; focus will be on 'backup & restore'
        SendEvent "{Enter}" ; open 'backup & restore'
        Send "{Down 4}" ; step to 'restore data' button
        Sleep(250) 
        SendEvent "{Enter}" ; open 'restore data'
        Sleep(1000) ; wait 
  
    ; --- Screenshot Devices / Ethos / manage ethos / restore data page  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-backup-restore-data.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

        SendEvent "{Up 3}" ; step back to exit
        SendEvent "{Enter}" ; exit to devices / ethos home 

    ; *** do the RF module section ***
    ; ***
        Send "{Down 4}" ; step to 'RF module' button
        Sleep(1000) ; wait 

    ; --- Screenshot Devices / Ethos / manage ethos / RF module page select ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-rf-module-select.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

        SendEvent "{Enter}" ; open 'RF module'
        Sleep(1000) ; wait 
  
    ; --- Screenshot Devices / Ethos / manage ethos / RF module page  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-rf-module.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

        SendEvent "{Down}" ; step around to exit
        SendEvent "{Enter}" ; exit to devices / ethos home 

    ; *** Disable the mock radio ***
        SendEvent "{Tab}" ; switch to left content page
        Send "{Down 12}" ; step down to 'Suite settings'
        Sleep(250) 
        SendEvent "{Enter}" ; open suite settings
        SendEvent "{Tab}" ; switch to right content page
        SendEvent "{Down}" ; step to mock radio settings
        SendEvent "{Enter}" ; open mock radio settings
        SendEvent "{Down}" ; step to mock radio enable
        SendEvent "{Enter}" ; Disable mock radio
        Sleep(3000) 

    ; *** Clean up back to start then close app
        SendEvent "{Tab}" ; switch to left content page
        SendEvent "{Enter}" ; back to Ethos
        MsgBox ("Script has completed.")
        ;ProcessClose(appName)
        ;ExitApp()

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
