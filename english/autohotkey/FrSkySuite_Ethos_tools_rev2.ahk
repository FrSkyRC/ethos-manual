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

    ; *** do the Update News section ***
    ; ***
        SendEvent "{Tab}" ; switch to right content page
        Send "{Down 4}" ; step to 'Update News' button
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

        Send "{Down 42}" ; step to 'StabilizerConfig' button
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
        WinActivate("ahk_exe FrSky Suite Demo.exe")
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

        Send "{Up 4}" ; step back  to 'Clear all' button'
        Sleep(250) 
        SendEvent "{Enter}" ; clear
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
        Sleep(5000) 

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
