$ErrorActionPreference = 'Stop'

$packageName = 'maza'
$toolsDir    = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64       = 'https://github.com/MazaCoin/maza/releases/download/v0.16.3/maza-0.16.3-win64-setup-unsigned.exe'
$checksum64  = '563F37E8208427A38CDE013F785D2A4CBB9AAC29E93DC1233D28B9762D3EDDEC'
$url32       = 'https://github.com/MazaCoin/maza/releases/download/v0.16.3/maza-0.16.3-win32-setup-unsigned.exe'
$checksum32  = 'D3F1D2BD4247FFBF3BF002A2E67F4445ED9D37F9C4AFD88DE6C45FF2C71F69D0'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url32
  url64bit       = $url64
  checksum       = $checksum32
  checksum64     = $checksum64
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
  softwareName   = 'MAZA Core*'
}
Install-ChocolateyPackage @packageArgs