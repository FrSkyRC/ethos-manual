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
FileDelete(ScreenshotsPath . "\suite-devices*.*")

; Run the executable execution loop
try {
    ; --- Launch FrSky Suite ---
    Run(appPath)
    
    ; Wait for it to load
    Sleep(5000)

    ; --- Close alert if it exists ---
    ;SendEvent("{Tab}{Enter}")
    ;Sleep(300) ; Ensure alert closes

    ; --- Resize window ---
    targetTitle := "FrSky Suite 2.0.2"
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
        Sleep(16000) ; wait for simulated firmware flash process


    ; --- Screenshot Devices / Ethos / manage ethos ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-fw-update-successful.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

        SendEvent "{Tab}" ; switch focus to 'Close' button
        SendEvent "{Enter}" ; accept fw-update-successful
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

    ; *** do the Update News section ***
    ; ***
        ;SendEvent "{Tab}" ; switch to right content page
        Send "{Down 5}" ; step to 'Update News' button
        Sleep(250) 
        SendEvent "{Enter}" ; open 'Update News'
        Sleep(1000) 
  
    ; --- Screenshot Devices / Ethos / manage ethos / Update News page  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-update-news.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

        SendEvent "{Down}" ; step to 'Back' button
        SendEvent "{Enter}" ; exit to devices / ethos home 

; *** do the Ethos Website section ***
; ***
        Send "{Down 6}" ; step to 'Ethos Website' button
        Sleep(250) 
        SendEvent "{Enter}" ; open 'Ethos Website'
        Sleep(8000) ; wait for website to load
  
    ; --- Screenshot Devices / Ethos / manage ethos / Ethos Website page  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-website.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

        SendEvent "{Down}" ; step to Ethos button
        SendEvent "{Enter}" ; exit to devices / ethos home 

    ; *** do the Lua Library section ***
    ; ***
        Send "{Down 8}" ; step to 'Lua Library' button
        Sleep(250) 
        SendEvent "{Enter}" ; open 'Lua Library'
        Sleep(1000) ; wait 
  
    ; --- Screenshot Devices / Ethos / manage ethos / Lua Library page  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-lua-library.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

        ;SendEvent "{Down 38}" ; step to 'StabilizerConfig' button
        Send "{Down 38}" ; step to 'StabilizerConfig' button
        Sleep(250) 
        SendEvent "{Enter}" ; open 'StabilizerConfig'
        Sleep(3000) ; wait for StabilizerConfig to install
        SendEvent "{Tab}" ; step to 'Close' button
        SendEvent "{Enter}" ; open 'StabilizerConfig'
        Sleep(1000) ; wait 
 
    ; --- Screenshot Devices / Ethos / manage ethos / Lua Library page  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-lua-library-stabconfig.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

        ; now delete stabconfig
        Send "{Down 6}" ; step to 'StabilizerConfig' delete option
        Sleep(250) 
        SendEvent "{Enter}" ; delete 'StabilizerConfig'
        Sleep(250) ; wait for StabilizerConfig to be deleted
        SendEvent "{Tab 2}" ; step to 'delete' button
        SendEvent "{Enter}" ; delete 'StabilizerConfig'
        Sleep(3000) ; wait 
        SendEvent "{Tab}" ; step to 'ok' button
        SendEvent "{Enter}" ; ok to deleted 'StabilizerConfig'
  
        Sleep(1000) ; wait 
  
        SendEvent "{Down}" ; step around to exit
        SendEvent "{Enter}" ; exit to devices / ethos home 
        Sleep(250) 

    ; *** do the Lua Dev Tools section ***
    ; ***
        Send "{Down 9}" ; step to 'Lua Dev Tools' button
        Sleep(250) 
        SendEvent "{Enter}" ; open 'Lua Dev Tools'
        Sleep(1000) ; wait 
  
    ; --- Screenshot Devices / Ethos / manage ethos / Lua Dev Tools page  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-lua-dev-tools.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

        SendEvent "{Down}" ; step around to exit
        SendEvent "{Enter}" ; exit to devices / ethos home 

    ; *** do the Image manager section ***
    ; ***
        ;SendEvent "{Tab}" ; switch to right content page
        Send "{Down 10}" ; step to 'Image manager' button
        Sleep(250) 
        SendEvent "{Enter}" ; open 'Image manager'
        Sleep(3000) ; wait 
  
    ; --- Screenshot Devices / Ethos / manage ethos / Image manager page  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-image-manager.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)
        

        ;Click 473,551 ; click add image button
        Send "{Down 3}" ; step to add image button
        Sleep(250)         
        SendEvent "{Enter}" ; open file explorer
        Sleep(1000) ; wait 
        
        ;Click 325,166 ; hopefully click on image
        Send "{Tab 10}" ; step to image in explorer
        Sleep(250) 
        SendEvent "{Down}" ; select the image file
        SendEvent "{Enter}" ; select image
        ;WinActivate("ahk_exe FrSky Suite Demo.exe")
        Sleep(3000) ; wait 

    ; --- Screenshot Devices / Ethos / manage ethos / Image manager with image  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-image-manager_with_image.png"        
        CaptureActiveWindow(targetPath)

        Send "{Down 3}" ; step to image
        Sleep(250) 
        SendEvent "{Enter}" ; clear
        SendEvent "{Down}" ; step around to exit
        SendEvent "{Enter}" ; exit to devices / ethos home 

    ; *** do the Audio manager section ***
    ; ***
        Send "{Down 11}" ; step to 'Image manager' button
        Sleep(250) 
        SendEvent "{Enter}" ; open 'Image manager'
        Sleep(3000) ; wait 
  
    ; --- Screenshot Devices / Ethos / manage ethos / Audio manager page  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-audio-manager.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

        Send "{Down 3}" ; step to 'Add audio files' button'
        Sleep(250) 
        SendEvent "{Enter}" ; press 'Add audio files'
        Sleep(1000) 
        ;Click 809,222 ; click 'Add audio files' button
        ;Send "{+Tab 2}" ; step to audio file
        ;Click 315,159 ; hopefully click on audio file
        ;Click 816,548 ; click 'Enter' button
        ;Send "{Tab 3}" ; step to 'open' button
        ;Send "{Enter}" ; select image

        Send "{Tab 10}" ; step to image in explorer
        Sleep(250) 
        ;SendText ("Addiction_X.png") ; step to 'open' button
        SendEvent "{Down}" ; select the image file
        SendEvent "{Enter}" ; select image
        Sleep(3000) ; wait 

    ; --- Screenshot Devices / Ethos / manage ethos / Audio manager with image  ---
        ; Define the path and name for screenshot
        targetPath := ScreenshotsPath "\suite-devices-ethos-manage-ethos-audio-manager-with-audio-file.png"        
        ; Call the standalone save function, it handles its own error messages
        CaptureActiveWindow(targetPath)

/*
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
*/
    ; *** Clean up back to start then close app
        SendEvent "{Tab}" ; switch to left content page
        SendEvent "{Enter}" ; back to Ethos

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
