HotKeySet("{end}", "Terminate")
HotKeySet("{f1}", "Pixs")

While 1
    Sleep(100)
WEnd

Func Terminate()
    Exit 0
EndFunc

Func Pixs()
$pos = MouseGetPos()

$pixie = PixelGetColor( $pos[0], $pos[1])
$color=Hex($pixie, 6)
$red = StringMid($color, 1, 2)
$green = StringMid($color, 3, 2)
$blue = StringMid($color, 5, 2)
$r = Dec($red)
$g = Dec($green)
$b = Dec($blue)
if $pos[0] > @DesktopWidth - 210 then $pos[0] = @DesktopWidth -210
if $pos[1] > @DesktopHeight - 70 then $pos[1] = @DesktopHeight -70
if $pos[0] = @DesktopWidth -210 and $pos[1] = @DesktopHeight - 70 then
$pos[0] = @DesktopWidth -215 *2
$pos[1] = @DesktopHeight -75 *2
endif
SplashTextOn ( "Color Checker","Red ("&$r &") Green ("&$g &") Blue ("&$b & ")"&@CRLF &"Hex---> " & $color &@CRLF &"Dec---> " &$pixie, 195, 55,$pos[0] +15 ,$pos[1] +15, 5, "Tahoma",10)
EndFunc