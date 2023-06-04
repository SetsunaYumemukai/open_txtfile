# open_txtfile
BAT file to open a TEXT file.

# このファイルを作ったのはなんでだと思う？
## 毎週金曜日17時にぽわっと週報テンプレートファイルを表示させる
週報書くの忘れちゃうじゃん？
それで怒られたくないじゃん？
せやから我は週報のテンプレートファイルを
毎週金曜日の17時になったらぽわっと出すことにしたんや。
だけどよく考えると金曜日に出張になったらこれどうなるんだろうね。
意味ないかもはは。。。。。

# どうやって毎週金曜日17時にぽわっと週報テンプレートファイルを表示させるの？
## タスクスケジューラと連携するよ
タスクスケジューラ側でsetup.cmdを毎週金曜日の17時に実行するように設定するよ。
kwskはググればいける。いけると信じてる。
もし私のよくわからないこのプログラムを使いたいけど
タスクスケジューラの設定方法わからない人は我に連絡してくれれば
何かしらの方法でご教授しますわよー。
Twitterもやってるしね、我を探してくれ。

# ファイルの説明
## Weeklyreport_open_copy.ps1
### カレントディレクトリを変更
$targetDirectory = Join-Path ([Environment]::GetFolderPath("Desktop")) -ChildPath 'Weeklyreport'
Set-Location -Path $targetDirectory
上記コードはDesktopフォルダにしているので、任意のフォルダに変更すること。

### Weeklyreport_tempファイルをコピー
Weeklyreport_tempファイルをコピーする先のフォルダは、
YYYY年＞MM月
となっている。
ちなみにWeeklyreport_temp.txtファイルは各自で用意してね。
時間があれば私が仕事で使うテンプレート例を乗っけておくねん。
