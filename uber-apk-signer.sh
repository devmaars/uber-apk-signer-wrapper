#!/bin/bash

# Path to your Uber APK Signer jar file
EXECUTABLE_NAME="$(basename $0)"
UBER_SIGNER_JAR="$(dirname "$0")/uber-apk-signer.jar"

# Function to check if Java is installed
check_java() {
    if ! command -v java &> /dev/null; then
        echo "Java is not installed. Please install Java to use this script."
        exit 1
    fi
}

# Function to check if Uber APK Signer jar exists
check_uber_signer() {
    if [ ! -f "$UBER_SIGNER_JAR" ]; then
        echo "Uber APK Signer jar file not found. Please provide the correct path."
        exit 1
    fi
}

# Main function to sign the APK
sign_apk() {
    check_java
    check_uber_signer

    # Run Uber APK Signer
    java -jar "$UBER_SIGNER_JAR" "$@"
}

# Check if any arguments are passed
if [ $# -eq 0 ]; then
    echo "Usage: $EXECUTABLE_NAME <options>"
    echo "Example: $EXECUTABLE_NAME -a myApp.apk"
    exit 1
fi

# Call the main function with passed arguments
sign_apk "$@"
