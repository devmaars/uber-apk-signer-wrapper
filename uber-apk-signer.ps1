# Path to your Uber APK Signer jar file
$ScriptDirectory = Split-Path -Parent $MyInvocation.MyCommand.Path
$ExecutableName = Split-Path -Leaf $MyInvocation.MyCommand.Path
$UberSignerJar = Join-Path -Path $ScriptDirectory -ChildPath "uber-apk-signer.jar"

# Function to check if Java is installed
function Check-Java {
    if (-not (Test-Path java)) {
        Write-Host "Java is not installed. Please install Java to use this script."
        exit 1
    }
}

# Function to check if Uber APK Signer jar exists
function Check-UberSigner {
    if (-not (Test-Path $UberSignerJar)) {
        Write-Host "Uber APK Signer jar file not found. Please provide the correct path."
        exit 1
    }
}

# Main function to sign the APK
function Sign-APK {
    Check-Java
    Check-UberSigner

    # Run Uber APK Signer
    & java -jar $UberSignerJar $args
}

# Check if any arguments are passed
if ($args.Count -eq 0) {
    Write-Host "Usage: $ExecutableName <options>"
    Write-Host "Example: $ExecutableName -a myApp.apk"
    exit 1
}

# Call the main function with passed arguments
Sign-APK $args
