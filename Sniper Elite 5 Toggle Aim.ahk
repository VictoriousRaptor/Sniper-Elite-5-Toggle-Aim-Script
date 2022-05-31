MsgBox, 4,, Toggle Key/Hold Script Run ? (press Yes or No)
IfMsgBox Yes
{
    MsgBox Script running.
}
else
{
    MsgBox Closing.
    ExitApp
}

#SingleInstance Force
#MaxThreadsPerHotkey 1
#IfWinActive ahk_class Sniper Elite 5
*RButton Up::
    If !GetKeyState("Q") {
        If (Toggle := !Toggle){
            Send {Click Down Right}
        }
        Else{
            Send {RButton up}
        }
    }
    Else{
        Send {RButton Down}
        Send {RButton Up}
    }
    Return

#IfWinActive ahk_class Sniper Elite 5
R::
    If (Toggle){
        Send {RButton up}
        Sleep, 50
        Send {R}
    }
    Else{
        Send {R}
    }
    Return
