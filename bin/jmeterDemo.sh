rm ~/work/sm-demo-monitor/output.csv
jmeter -n -t ~/work/sm-demo-monitor/SM\ Demo\ Test\ Plan.jmx -l ~/work/sm-demo-monitor/output.csv
cat ~/work/sm-demo-monitor/output.csv | GREP_COLOR='01;32' grep -E --color '200,OK|$'
rm jmeter.log
