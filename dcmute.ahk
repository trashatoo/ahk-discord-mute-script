#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force  ; Prevents running multiple instances of the script.

; Set the hotkey to Alt + ` (backtick)
!`::
    ; Store the currently active window
    WinGet, ActiveWindow, ID, A

    ; Activate Discord window
    IfWinExist ahk_exe Discord.exe
    {
        ; Activate Discord
        WinActivate, ahk_exe Discord.exe
        ; Send the mute/unmute key combination (Ctrl + Shift + M)
        Send, ^+m

        ; Wait a moment to ensure the command is sent
        Sleep, 100

        ; Return to the previously active window
        WinActivate, ahk_id %ActiveWindow%
    }
    return
