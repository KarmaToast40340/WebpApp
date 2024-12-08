[Setup]
AppName=WebpApp
AppVersion=1.0
DefaultDirName={commonpf}\WebpApp
DefaultGroupName=WebpApp
OutputDir=Output
OutputBaseFilename=WebpAppInstaller

[Files]
; Copier WebpApp.exe dans le dossier d'installation
Source: "C:\Users\mathi\Documents\Webpapp\dist\WebpApp.exe"; DestDir: "{app}"; Flags: ignoreversion

; Copier le fichier .reg dans le dossier d'installation
Source: "C:\Users\mathi\Documents\Webpapp\regedit.reg"; DestDir: "{app}"; Flags: ignoreversion

[Run]
; Lancer le fichier .reg pour ajouter les entrées de registre
Filename: "regedit.exe"; Parameters: "/s ""{app}\regedit.reg"""; StatusMsg: "Mise à jour du registre..."; Flags: runhidden

[Icons]
Name: "{group}\WebpApp"; Filename: "{app}\WebpApp.exe"
