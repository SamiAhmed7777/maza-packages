# MAZA Core uninstaller
$softwareName = 'MAZA Core*'
[array]$key = Get-UninstallRegistryKey -SoftwareName $softwareName
if ($key.Count -eq 1) {
    $key | ForEach-Object {
        Uninstall-ChocolateyPackage -PackageName 'maza' -FileType 'EXE' `
            -SilentArgs '/S' -ValidExitCodes @(0) `
            -File ((Get-ItemProperty -Path "$($_.UninstallString.Replace('"',''))").directoryName + '\uninstall.exe')
    }
} elseif ($key.Count -gt 1) {
    Write-Warning "$($key.Count) matches found; please uninstall the MAZA Core app manually."
} else {
    Write-Warning "MAZA Core is not installed via this package."
}