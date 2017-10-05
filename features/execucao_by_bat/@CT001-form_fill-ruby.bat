@echo off
chcp 65001
cd C:\GitSpread\ProjetoModeloCapybara\
echo @CT001-form_fill-ruby
cucumber --format html --out="features/reports/CT001-form_fill-ruby.html" --tag @CT001-form_fill-ruby BROWSER=chrome
pause