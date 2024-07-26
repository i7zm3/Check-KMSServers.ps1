# Check-KMSServers.ps1
How to Use-

Open PowerShell:
    Run PowerShell as Administrator.
    
Create the Script File:
    Open a text editor (e.g., Notepad). Copy and paste the script into the text editor. Save the file with a .ps1 extension, for example, Check-KMSServers.ps1
    
Run the Script:
    In PowerShell, navigate to the directory where you saved the script. Execute the script by typing .\Check-KMSServers.ps1 and pressing Enter.


Ensure you have the necessary permissions to run scripts on your system. You might need to adjust your PowerShell execution policy to allow running scripts. You can do this with:
powershell-
          Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
      (Be cautious and understand the implications of changing execution policies.)

The script will output whether each server is reachable and if port 1688 is open. If a server is not reachable or the port is closed, it will indicate that in the output.

Feel free to adjust the script or add additional functionality as needed!
