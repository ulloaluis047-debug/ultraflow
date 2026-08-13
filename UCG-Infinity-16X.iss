#define AppName "UCG Infinity 16X"
#define AppVersion "0.1.0"
#define Publisher "UCG Corp"

[Setup]
AppId={{F9A9448B-5403-4CB6-9B97-7E862D27316D}
AppName={#AppName}
AppVersion={#AppVersion}
AppPublisher={#Publisher}
DefaultDirName={autopf}\UCG Corp\UCG Infinity 16X
DisableProgramGroupPage=yes
PrivilegesRequired=admin
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
OutputDir=..\dist
OutputBaseFilename=UCG-Infinity-16X-Setup
Compression=lzma2/ultra64
SolidCompression=yes
WizardStyle=modern
UninstallDisplayName={#AppName}

[Files]
Source: "..\dist\payload\UCG Infinity 16X.vst3\*"; DestDir: "{commoncf64}\VST3\UCG Infinity 16X.vst3"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "..\dist\payload\UCG Infinity 16X.exe"; DestDir: "{app}"; Flags: ignoreversion

[Dirs]
Name: "{commonappdata}\UCG Corp\UCG Infinity 16X\CONTENT\Hypersonic\Patches"
Name: "{commonappdata}\UCG Corp\UCG Infinity 16X\CONTENT\Hypersonic\Banks"
Name: "{commonappdata}\UCG Corp\UCG Infinity 16X\CONTENT\Nexus\Presets"
Name: "{commonappdata}\UCG Corp\UCG Infinity 16X\CONTENT\Nexus\Samples"
Name: "{commonappdata}\UCG Corp\UCG Infinity 16X\CONTENT\UCG Libraries"
Name: "{commonappdata}\UCG Corp\UCG Infinity 16X\CONTENT\User Samples"

[Icons]
Name: "{autoprograms}\UCG Infinity 16X"; Filename: "{app}\UCG Infinity 16X.exe"
Name: "{autodesktop}\UCG Infinity 16X"; Filename: "{app}\UCG Infinity 16X.exe"; Tasks: desktopicon

[Tasks]
Name: desktopicon; Description: "Crear acceso directo en el escritorio"; GroupDescription: "Accesos directos:"

[Run]
Filename: "{app}\UCG Infinity 16X.exe"; Description: "Abrir UCG Infinity 16X"; Flags: nowait postinstall skipifsilent
