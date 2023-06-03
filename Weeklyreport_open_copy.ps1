# 今日の日付をYYYYMMDD形式で取得
$today = Get-Date -Format "yyyyMMdd"

# 今日の年を取得
$year = Get-Date -Format "yyyy"

# 今月の月を取得
$month = Get-Date -Format "MM"

# 先頭の0を削除
$month = $month -replace "^0"

# カレントディレクトリを変更
$targetDirectory = Join-Path ([Environment]::GetFolderPath("Desktop")) -ChildPath 'Weeklyreport'
Set-Location -Path $targetDirectory

# Weeklyreport_tempファイルをコピー
$sourceFile = "Weeklyreport_temp.txt"
$destinationFolder = Join-Path -Path $targetDirectory -ChildPath (Join-Path -Path $year'年' -ChildPath $month'月')
# $destinationFolder = '{0}\{1}年\{2}月' -f $targetDirectory, $year, $month

$destinationFileName ='Weeklyreport_{0}' -f $today

$destinationPath = Join-Path -Path $destinationFolder -ChildPath ('{0}.txt' -f $destinationFileName)

echo $destinationPath
Copy-Item -Path $sourceFile -Destination $destinationPath

# Weeklyreport_todayファイルを開く
Invoke-Item -Path $destinationPath