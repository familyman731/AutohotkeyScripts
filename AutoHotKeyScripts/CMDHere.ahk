^d::
SetTitleMatchMode, 2
WinGetClass, class, A

if (%class% == CabinetWClass) {
  ControlGetText, address, Edit1, A
  MsgBox, %address%
 }
else
  address =

; Exclude specific windows

if winactive, My Computer
  address =

if (address <> "") 
  Run, cmd.exe, %address%
else 
  Run, cmd.exe, C:\
