# Uber APK Signer Script

This script simplifies the process of signing APK files using Uber APK Signer on Linux, macOS, and Windows systems.

## Table of Contents
- [Linux Installation](#linux-installation)
- [Windows Installation](#windows-installation)
- [MacOS Installation](#macos-installation)

## Linux Installation

### Prerequisites

- Java Development Kit (JDK) installed on your system.
- Uber APK Signer jar file accessible via the system path.

### Installation

1. **Install Java Development Kit (JDK):**
   - If you haven't already installed JDK, you can download it from the official website and follow the installation instructions provided.

2. **Ensure Uber APK Signer is in the System Path:**
   - Place the Uber APK Signer jar file in a directory that is included in the system's PATH environment variable.
   - Alternatively, you can create a symbolic link to the Uber APK Signer jar file in a directory that is included in the system's PATH.

3. **Download Script:**
   - Obtain the provided script (`uber-apk-signer.sh`) and place it in any directory included in the system's PATH.

4. **Make Script Executable (if necessary):**
   - If the script is not already executable, you can make it executable by running the following command in a terminal window:
     ```
     chmod +x /path/to/uber-apk-signer.sh
     ```

### Usage

- Open a terminal window.
- Run the script using the following command:

```bash
uber-apk-signer.sh <options>
```

Replace `<options>` with the desired options for signing the APK file.

For detailed usage instructions and examples, refer to the script itself.

## Windows Installation

### Prerequisites

- Java Development Kit (JDK) installed on your system.
- Uber APK Signer jar file accessible via the system path.

### Installation

1. **Install Java Development Kit (JDK):**
 - If you haven't already installed JDK, you can download it from the official website and follow the installation instructions provided.

2. **Ensure Uber APK Signer is in the System Path:**
 - Place the Uber APK Signer jar file in a directory that is included in the system's PATH environment variable.

3. **Download Script:**
 - Obtain the provided script (`uber-apk-signer.ps1` for PowerShell, `uber-apk-signer.bat` for Windows Command Prompt) and place it in any directory included in the system's PATH.

### Usage

- Open PowerShell (for PowerShell script) or Command Prompt (for batch script).
- Run the script using the following command:

```powershell
uber-apk-signer <options>
```
Replace `<options>` with the desired options for signing the APK file.

For detailed usage instructions and examples, refer to the script itself.

## MacOS Installation

### Prerequisites

- Java Development Kit (JDK) installed on your system.
- Uber APK Signer jar file accessible via the system path.

### Installation

The installation process for macOS is similar to Linux. Follow the instructions provided in the [Linux Installation](#linux-installation) section.

### Usage

The usage instructions for macOS are the same as for Linux. Refer to the [Linux Usage](#linux-installation) section for detailed instructions.


**Warning: Only the Linux version of this script has been tested. Users on macOS and Windows are advised to verify the script's functionality before use.**
