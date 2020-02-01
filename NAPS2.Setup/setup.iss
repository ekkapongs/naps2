; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define AppVersion "6.0.4"

[Setup]
AppName=NAPS2 (Not Another PDF Scanner 2)
AppVerName=NAPS2 {#AppVersion}
AppPublisher=Ben Olden-Cooligan
AppPublisherURL=http://www.sourceforge.net/projects/naps2
AppSupportURL=http://www.sourceforge.net/projects/naps2
AppUpdatesURL=http://www.sourceforge.net/projects/naps2
DefaultDirName={pf}\NAPS2
DefaultGroupName=NAPS2
OutputDir=../publish/{#AppVersion}
OutputBaseFilename=naps2-{#AppVersion}-setup       
Compression=lzma
SolidCompression=yes

LicenseFile=..\..\LICENSE
UninstallDisplayIcon={app}\scanner-app.ico

[Run]
Filename: "{app}\NAPS2.exe"; Flags: nowait postinstall

[Languages]
Name: "english";              MessagesFile: "compiler:Default.isl"
Name: "BrazilianPortuguese";  MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\BrazilianPortuguese.isl"; 
Name: "Catalan";              MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Catalan.isl"; 
Name: "Corsican";             MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Corsican.isl"; 
Name: "Danish";               MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Danish.isl"; 
Name: "Dutch";                MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Dutch.isl"; 
Name: "Finnish";              MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Finnish.isl";
Name: "French";               MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\French.isl";
Name: "German";               MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\German.isl";
Name: "Greek";                MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Greek.isl"; 
Name: "Hebrew";               MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Hebrew.isl"; 
Name: "Hungarian";            MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Hungarian.isl"; 
Name: "Italian";              MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Italian.isl";
Name: "Japanese";             MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Japanese.isl";
Name: "Norwegian";            MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Norwegian.isl"; 
Name: "Polish";               MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Polish.isl";
Name: "Portuguese";           MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Portuguese.isl"; 
Name: "Russian";              MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Russian.isl"; 
Name: "ScottishGaelic";       MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\ScottishGaelic.isl"; 
Name: "SerbianCyrillic";      MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\SerbianCyrillic.isl"; 
Name: "SerbianLatin";         MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\SerbianLatin.isl"; 
Name: "Slovenian";            MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Slovenian.isl"; 
Name: "Spanish";              MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Spanish.isl";
Name: "Turkish";              MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Turkish.isl"; 
Name: "Ukrainian";            MessagesFile: "C:\Program Files (x86)\Inno Setup 5\Languages\Ukrainian.isl"; 

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]                              
#include "setup.languagefiles.iss"                                                          
Source: "..\bin\InstallerEXE\NAPS2.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\NAPS2.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\NAPS2.Core.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\NAPS2.DI.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\CommandLine.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\Ghostscript.NET.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\ICSharpCode.SharpZipLib.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\Microsoft.Threading.Tasks.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\Microsoft.Threading.Tasks.Extensions.Desktop.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\Microsoft.Threading.Tasks.Extensions.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\MimeKit.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\Newtonsoft.Json.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\Ninject.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\NLog.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\NTwain.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\PdfSharp.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\System.IO.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\System.Runtime.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\System.Threading.Tasks.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\System.ValueTuple.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\bin\InstallerEXE\zxing.dll"; DestDir: "{app}\lib"; Flags: ignoreversion
Source: "..\appsettings.xml"; DestDir: "{app}"; Flags: ignoreversion           
Source: "..\..\LICENSE"; DestDir: "{app}"; DestName: "license.txt"; Flags: ignoreversion
Source: "..\..\CONTRIBUTORS"; DestDir: "{app}"; DestName: "contributors.txt"; Flags: ignoreversion
Source: "..\..\NAPS2.Console\bin\InstallerEXE\NAPS2.Console.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\NAPS2.Console\bin\InstallerEXE\NAPS2.Console.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\NAPS2.Worker\bin\InstallerEXE\NAPS2.Worker.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\NAPS2.Worker\bin\InstallerEXE\NAPS2.Worker.exe.config"; DestDir: "{app}"; Flags: ignoreversion
Source: "lib\64\twaindsm.dll"; DestDir: "{app}\lib\64"; Flags: ignoreversion
Source: "lib\twaindsm.dll"; DestDir: "{sys}"; Flags: sharedfile
Source: "lib\64\NAPS2.Wia.Native.dll"; DestDir: "{app}\lib\64"; Flags: ignoreversion
Source: "lib\NAPS2.Wia.Native.dll"; DestDir: "{app}\lib"; Flags: ignoreversion

; Delete files from old locations in case of upgrade
[InstallDelete]
Type: files; Name: "{app}\*.dll"
Type: filesandordirs; Name: "{app}\??"
Type: filesandordirs; Name: "{app}\??-??"

[Icons]
Name: "{group}\NAPS2"; Filename: "{app}\NAPS2.exe"
Name: "{commondesktop}\NAPS2"; Filename: "{app}\NAPS2.exe"; Tasks: desktopicon

[Registry]
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\WIA_{{1c3a7177-f3a7-439e-be47-e304a185f932}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\WIA_{{1c3a7177-f3a7-439e-be47-e304a185f932}"; ValueType: string; ValueName: "Action"; ValueData: "Scan with NAPS2"
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\WIA_{{1c3a7177-f3a7-439e-be47-e304a185f932}"; ValueType: string; ValueName: "CLSID"; ValueData: "WIACLSID"
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\WIA_{{1c3a7177-f3a7-439e-be47-e304a185f932}"; ValueType: string; ValueName: "DefaultIcon"; ValueData: "sti.dll,0"
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\WIA_{{1c3a7177-f3a7-439e-be47-e304a185f932}"; ValueType: string; ValueName: "InitCmdLine"; ValueData: "/WiaCmd;{pf}\NAPS2\NAPS2.exe /StiDevice:%1 /StiEvent:%2;"
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AutoplayHandlers\Handlers\WIA_{{1c3a7177-f3a7-439e-be47-e304a185f932}"; ValueType: string; ValueName: "Provider"; ValueData: "NAPS2"

Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\StillImage\Registered Applications"; Flags:uninsdeletevalue; ValueType: string; ValueName: "NAPS2"; ValueData: "{pf}\NAPS2\NAPS2.exe"

Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\StillImage\Events\STIProxyEvent\{{1c3a7177-f3a7-439e-be47-e304a185f932}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\StillImage\Events\STIProxyEvent\{{1c3a7177-f3a7-439e-be47-e304a185f932}"; ValueType: string; ValueName: "Cmdline"; ValueData: "{pf}\NAPS2\NAPS2.exe /StiDevice:%1 /StiEvent:%2"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\StillImage\Events\STIProxyEvent\{{1c3a7177-f3a7-439e-be47-e304a185f932}"; ValueType: string; ValueName: "Desc"; ValueData: "Scan with NAPS2"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\StillImage\Events\STIProxyEvent\{{1c3a7177-f3a7-439e-be47-e304a185f932}"; ValueType: string; ValueName: "Icon"; ValueData: "{pf}\NAPS2\NAPS2.exe,0"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\StillImage\Events\STIProxyEvent\{{1c3a7177-f3a7-439e-be47-e304a185f932}"; ValueType: string; ValueName: "Name"; ValueData: "NAPS2"

