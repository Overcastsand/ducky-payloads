# 1. Load the built-in Windows visual tool
Add-Type -AssemblyName System.Windows.Forms

# 2. Set up your custom message and title
$Message = "You have been visited by the RP2040 Rubber Ducky. Have a great day!"
$Title = "Security Alert"

# We ask PowerShell to check IF a specific folder exists
$targetFolder = "C:\Users\Public\Desktop"

if (Test-Path $targetFolder) {
    # If the folder DOES exist, it runs this code:
    [System.Windows.Forms.MessageBox]::Show("I found the folder!", "Target Acquired")
} 
else {
    # If the folder DOES NOT exist, it runs this code instead:
    [System.Windows.Forms.MessageBox]::Show("Folder missing, aborting mission.", "Error")
}

# 3. Choose the buttons and the little icon (Warning, Information, Error, etc.)
$Buttons = [System.Windows.Forms.MessageBoxButtons]::OK
$Icon = [System.Windows.Forms.MessageBoxIcon]::Warning

# 4. Command Windows to draw the box on the screen
[System.Windows.Forms.MessageBox]::Show($Message, $Title, $Buttons, $Icon)
