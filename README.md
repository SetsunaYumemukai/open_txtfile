# open_txtfile
BAT file to open a TEXT file.

# Weeklyreport_open_copy.ps1
## カレントディレクトリを変更
$targetDirectory = Join-Path ([Environment]::GetFolderPath("Desktop")) -ChildPath 'Weeklyreport'
Set-Location -Path $targetDirectory
上記コードはDesktopフォルダにしているので、任意のフォルダに変更すること。

## Weeklyreport_tempファイルをコピー
Weeklyreport_tempファイルをコピーするフォルダは、
YYYY年＞M月
となっている。