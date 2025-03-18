# Read the project name and version from the .config file
$configFile = "project.config"
$configContent = Get-Content $configFile
$projectName = $configContent[0]
$projectVersion = $configContent[1]

# Define the source directory and the destination directory
$sourceDir = "G:\Project\MOD\factorio\AMES\project"
$destDir = "$env:APPDATA\Factorio\mods"

# Create the zip file with the project name and version
$zipFile = "${projectName}_${projectVersion}.zip"
Compress-Archive -Path "$sourceDir\*" -DestinationPath $zipFile -Force

# Copy the zip file to the destination directory
Copy-Item -Path $zipFile -Destination $destDir -Force

# Copy the project folder to the destination directory and rename it with the project name and version
$destProjectDir = "$destDir\${projectName}_${projectVersion}"
Copy-Item -Path $sourceDir -Destination $destProjectDir -Recurse -Force

Write-Output "Project has been compressed and copied successfully."
# Pause