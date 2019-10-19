# asciidoctor_sample003

asciidoctor-pdfのサンプルです。

## PDF出力手順

* VisualStudioCodeを起動し、「フォルダを開く」。
  * RubyとAsciidoctorがインストールされていること
  * 拡張機能「AsciiDoc」がインストールされていること
  * 「源真ゴシック」がインストールされていること
* サイドバーのエクスプローラを押します。
* 適当なファイルを右クリックし、「Open in Command Prompt」。
* 以下のコマンドを実行します。ターミナルがDOSプロンプトの場合、ファイル名補完（TABキー）が使えることを確認しています。

```
ターミナルがDOSプロンプトの場合：
convert_pdf.bat

PowerShellの場合：
./convert_pdf.bat
```

* BATファイルの内容は以下の通りです。

```
set fname_adc="Sample006.adoc"
set fname_pdf="Sample006.pdf"

if exist %fname_pdf% (del %fname_pdf%)
asciidoctor-pdf -r asciidoctor-pdf-cjk %fname_adc%
pause
```

* 繰り返し行う時は、ターミナル上で↑キーを押し、「Return」。