$NDKPath = Get-Content $PSScriptRoot/NDKPath.txt
Write-Output "NDK located at: $NDKPath"

$buildScript = "$NDKPath/build/ndk-build"
if (-not ($PSVersionTable.PSEdition -eq "Core")) {
    $buildScript += ".cmd"
}

Write-Output "[FAQ] youtube.com/@Parad1st"
Write-Output "[PR] BLACK RUSSIA"
Write-Output "[BUILD] Starting..."
& $buildScript NDK_PROJECT_PATH=$PSScriptRoot APP_BUILD_SCRIPT=$PSScriptRoot/Android.mk NDK_APPLICATION_MK=$PSScriptRoot/Application.mk NDK_DEBUG=0
Write-Output "[BUILD] Done!"

Exit $LASTEXITCODE
