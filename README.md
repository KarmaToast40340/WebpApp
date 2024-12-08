# WebpApp
---

## Application for Windows

#### **Overview**
WebpApp is a lightweight and efficient application that allows users to convert `.webp` image files to `.png` format. It integrates seamlessly with the Windows context menu, enabling quick and easy file conversions directly from the right-click menu.

---

#### **Features**
- **Right-Click Integration**: Convert `.webp` files to `.png` directly from the context menu.
- **Command-Line Support**: Use the application in terminal/command prompt for batch conversions or scripting.
- **Lightweight**: Minimal resource usage and easy to install.

---

#### **Installation**
1. Run the `WebpAppInstaller.exe`.
2. The installer will:
   - Place the application in `C:\Program Files (x86)\WebpApp`.
   - Add a `Convert to PNG` option in the right-click menu for `.webp` files.
   - Add the application to the system `PATH` for command-line usage.

3. Restart your computer if the context menu option does not appear immediately.

---

#### **Usage**
1. **Via Context Menu**:
   - Right-click any `.webp` file.
   - Select the option `Convert to PNG`.
   - The `.png` version will be saved in the same directory as the original file.

2. **Via Command Line**:
   - Open a terminal.
   - Run the following command:
     ```
     WebpApp.exe "path\to\your\webpfile.webp"
     ```
   - Example:
     ```
     WebpApp.exe "C:\Users\Username\Pictures\example.webp"
     ```
   - The `.png` file will be generated in the same folder.

---

#### **Uninstallation**
1. Use the `Uninstaller.exe` created during installation.
2. The uninstaller will:
   - Remove the application from your system.
   - Clean up entries in the Windows context menu.
   - Delete registry keys created during installation.

---

#### **Requirements**
- Windows 7 or later.
- .NET Framework (if not already installed).

---

#### **Known Issues**
- If the `Convert to PNG` option does not appear:
  - Restart your computer.
  - Ensure the app was installed with administrator privileges.
  - Ensure the app was installed in the following path :`C:\Program Files (x86)\WebpApp`.

---

#### **Support**
For support, bug reports, or feature requests, contact us at **support@webpapp.com**.