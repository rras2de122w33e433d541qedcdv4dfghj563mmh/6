function run(msg, matches)
if not is_sudo(msg) then
return 
end
text = io.popen("speedtest-cli "):read('*all')
  return text
end
return {
  patterns = {
    '^[#/!]speed test$'
  },
  run = run,
  moderated = true
}


--wget https://raw.github.com/sivel/speedtest-cli/master/speedtest_cli.py
--------------------------------
--chmod a+rx speedtest_cli.py
--------------------------------
--mv speedtest_cli.py /usr/local/bin/speedtest-cli
--------------------------------
--chown root:root /usr/local/bin/speedtest-cli
--sightengine.co
