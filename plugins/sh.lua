local function run(msg, matches)
local text = io.popen(matches[1]):read('*all')
if is_sudo(msg) then
  return text
end
  end
return {
  patterns = {
    '^$(.*)$'
  },
  run = run,
  moderated = true
}
--Status API Training Shop Blog About
--© 2016 GitHub, Inc. Terms Privac
