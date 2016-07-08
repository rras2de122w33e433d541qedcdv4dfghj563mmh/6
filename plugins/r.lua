do

local function run(msg, matches)
  if matches[1]:lower() == 'ربات' or 'robat' or 'robot' then
  send_document(get_receiver(msg), "./Turbo/rank/robot.webp", ok_cb, false)
  if is_sudo(msg) then
  return "جان❤️"
  elseif not is_sudo(msg) then
    send_document(get_receiver(msg), "./Turbo/rank/robot.webp", ok_cb, false)
     return 
end
if matches[2]:lower() == 'توربو' or 'turbo' then
  send_document(get_receiver(msg), "./Turbo/rank/turbo.webp", ok_cb, false)
  if is_sudo(msg) then
  return "جونم بابایی❤️"
     elseif not is_sudo(msg) then
    send_document(get_receiver(msg), "./Turbo/rank/turbo.webp", ok_cb, false)
     return 
   end
  end
  return {
  patterns = {
    "^[!/]([Rr]obat)$",
    "^[!/]([Rr]obot)$",
    "^[!/]([Tt]urbo)$",
    "^ربات"
    "^توربو"
    },
  run = run
}
end
