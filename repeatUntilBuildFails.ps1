#!/usr/bin/env pwsh

$counter = 0

while (./gradlew clean build --no-daemon --rerun-tasks) {
    $counter++
    Write-Host "**************************************************************************"
    Write-Host "### Build succeeded (execution number: $counter) -->> running again... ###"
    Write-Host "**************************************************************************"
}

$counter++
Write-Host ">>> Build failed on execution number: $counter at $(Get-Date) <<<"
