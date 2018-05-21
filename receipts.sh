rm -rf ./receipts/temp.pdf
/usr/local/bin/wkhtmltopdf --quite --dpi 300 --page-size A6 "$1" ./receipts/temp.pdf
