set fname_adc="Sample006.adoc"
set fname_pdf="Sample006.pdf"

if exist %fname_pdf% (del %fname_pdf%)
asciidoctor-pdf -r asciidoctor-diagram -r asciidoctor-pdf-cjk %fname_adc%
pause
