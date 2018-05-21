echo "$1"
/usr/local/bin/wkhtmltopdf --dpi 300 --page-size A6 "$1" ./receipts/temp.pdf
