# �����̓��t��YYYYMMDD�`���Ŏ擾
$today = Get-Date -Format "yyyyMMdd"

# �����̔N���擾
$year = Get-Date -Format "yyyy"

# �����̌����擾
$month = Get-Date -Format "MM"

# �擪��0���폜
$month = $month -replace "^0"

# �J�����g�f�B���N�g����ύX
$targetDirectory = Join-Path ([Environment]::GetFolderPath("Desktop")) -ChildPath 'Weeklyreport'
Set-Location -Path $targetDirectory

# Weeklyreport_temp�t�@�C�����R�s�[
$sourceFile = "Weeklyreport_temp.txt"
$destinationFolder = Join-Path -Path $targetDirectory -ChildPath (Join-Path -Path $year'�N' -ChildPath $month'��')
# $destinationFolder = '{0}\{1}�N\{2}��' -f $targetDirectory, $year, $month

$destinationFileName ='Weeklyreport_{0}' -f $today

$destinationPath = Join-Path -Path $destinationFolder -ChildPath ('{0}.txt' -f $destinationFileName)

echo $destinationPath
Copy-Item -Path $sourceFile -Destination $destinationPath

# Weeklyreport_today�t�@�C�����J��
Invoke-Item -Path $destinationPath