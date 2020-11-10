; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!


#define VERSION "0.94.2"
#define MyAppName "Greenflare SEO Web Crawler"
#define MyAppShortName "Greenflare"
#define MyAppProjectFileDesc "Greenflare Database File"
#define MyAppPublisher "Greenflare"
#define MyPublisherURL "https://greenflare.io/"
#define MySupportURL "https://greenflare.io/"
#define MyAppExeName "greenflare.exe"

[Setup]

AppName={#MyAppName}
AppVersion={#VERSION}
VersionInfoVersion={#VERSION}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyPublisherURL}
AppSupportURL={#MySupportURL}
AppCopyright=Copyright (c) 2020 {#MyAppPublisher}
DefaultDirName={pf}\{#MyAppName}
DisableProgramGroupPage=yes
; LicenseFile=..\COPYING
OutputBaseFilename=GreenflareSEOCrawler-{#VERSION}
ArchitecturesInstallIn64BitMode="x64"
ArchitecturesAllowed="x64"
ChangesAssociations=yes
ChangesEnvironment=yes
Compression=lzma
SolidCompression=yes
; WizardSmallImageFile=greenflare\resources\greenflare-icon-32x32.bmp
SetupIconFile=greenflare\resources\greenflare-icon-32x32.ico
UninstallDisplayIcon={app}\{#MyAppExeName}
; SignedUninstaller=yes
; SignedUninstallerDir=..\build\

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "fileassoc"; Description: "{cm:AssocFileExtension,{#MyAppName},.gflaredb}"; GroupDescription: "{cm:AdditionalIcons}";
; Name: "firewall"; Description: "Add an exception to the Windows Firewall for optionally sending anonymized usage and error information."; GroupDescription: "{cm:AdditionalIcons}";

[InstallDelete]
; Remove previous installed versions of OpenShot
Type: filesandordirs; Name: "{app}\*"
Type: dirifempty; Name: "{app}\*"

[Registry]
Root: HKCR; Subkey: ".gflaredb";                             ValueData: "{#MyAppName}";          Flags: uninsdeletevalue; ValueType: string;  ValueName: ""
Root: HKCR; Subkey: "{#MyAppName}";                     ValueData: "Program {#MyAppName}";  Flags: uninsdeletekey;   ValueType: string;  ValueName: ""
Root: HKCR; Subkey: "{#MyAppName}\DefaultIcon";             ValueData: "{app}\{#MyAppExeName},0";               ValueType: string;  ValueName: ""
Root: HKCR; Subkey: "{#MyAppName}\shell\open\command";  ValueData: """{app}\{#MyAppExeName}"" ""%1""";  ValueType: string;  ValueName: ""

[Files]
; Add all frozen files from cx_Freeze build
Source: "build\exe.win-amd64-3.8\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs

[Icons]
Name: "{commonprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent