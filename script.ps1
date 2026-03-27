# 1. Load the built-in Windows visual tool
Add-Type -AssemblyName System.Windows.Forms

# 2. Set up your custom message and title
$Message = "You have been visited by the RP2040 Rubber Ducky. Have a great day!"
$Title = "Security Alert"

# 3. Choose the buttons and the little icon (Warning, Information, Error, etc.)
$Buttons = [System.Windows.Forms.MessageBoxButtons]::OK
$Icon = [System.Windows.Forms.MessageBoxIcon]::Warning

# 4. Command Windows to draw the box on the screen
[System.Windows.Forms.MessageBox]::Show($Message, $Title, $Buttons, $Icon)
