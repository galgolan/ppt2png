#include <Constants.au3>
#include <ScreenCapture.au3>

; ***************************************

$interval = 500		;1000 = 1 sec

; ***************************************


Const $appName = "PowerPoint Image Exporter"
Const $slideShowClassName = "[CLASS:screenClass]"

; Prompt the user to run the script - use a Yes/No prompt with the flag parameter set at 4 (see the help file for more details)
Local $iAnswer = MsgBox(BitOR($MB_YESNO, $MB_SYSTEMMODAL), $appName, "This script will run wait for the next power point presentation to start and save it as images. Do you want to run it?")

; Check the user's answer to the prompt (see the help file for MsgBox return values)
; If "No" was clicked (7) then exit the script
If $iAnswer = 7 Then
	MsgBox($MB_SYSTEMMODAL, $appName, "Bye!")
	Exit
 EndIf

 ; Run Notepad
;Run("powerpnt.exe")

WinWaitActive($slideShowClassName)
Local $hWnd = WinGetHandle($slideShowClassName)

Local $title = WinGetTitle("[ACTIVE]")
ConsoleWrite("Title:" & $title)

DirCreate(@MyDocumentsDir & "\Captures")

$frameCounter = 1
While WinExists($slideShowClassName)
   ;ConsoleWrite(@MyDocumentsDir & "\Captures\" + $title & "_Frame" & $frameCounter & ".jpg")

   _ScreenCapture_CaptureWnd(@MyDocumentsDir & "\Captures\" & $title & "_Frame" & $frameCounter & ".png", $hWnd)
   $frameCounter = $frameCounter + 1
   Send("{SPACE}")
   Sleep($interval)
WEnd

;WinClose($hWnd)
;WinWaitClose("[CLASS:Notepad]")