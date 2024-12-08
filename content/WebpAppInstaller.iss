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

; Copier le fichier desedit.reg dans un emplacement sécurisé
Source: "C:\Users\mathi\Documents\Webpapp\desedit.reg"; DestDir: "{commonappdata}\WebpApp"; Flags: ignoreversion


[Run]
; Lancer le fichier .reg pour ajouter les entrées de registre
Filename: "regedit.exe"; Parameters: "/s ""{app}\regedit.reg"""; StatusMsg: "Mise à jour du registre..."; Flags: runhidden

[Icons]
Name: "{group}\WebpApp"; Filename: "{app}\WebpApp.exe"


[UninstallRun]
; Exécuter le fichier desedit.reg depuis %ProgramData% pour nettoyer les entrées du registre
Filename: "regedit.exe"; Parameters: "/s ""{commonappdata}\WebpApp\desedit.reg"""; StatusMsg: "Suppression des entrées du registre..."; Flags: runhidden; RunOnceId: "RunDeseditReg"

; Supprimer le fichier desedit.reg après utilisation
Filename: "cmd.exe"; Parameters: "/c del ""{commonappdata}\WebpApp\desedit.reg"""; Flags: runhidden; RunOnceId: "DeleteDeseditReg"

[UninstallDelete]
; Supprimer le répertoire %ProgramData%\WebpApp si vide
Type: dirifempty; Name: "{commonappdata}\WebpApp"

