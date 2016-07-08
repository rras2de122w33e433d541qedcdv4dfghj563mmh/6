local function run(msg, matches)
local mina = 132472033
  local hash = 'rank:variables'
  local text = ''
    local value = redis:hget(hash, msg.from.id)
     if not value then
        if msg.from.id == tonumber(mina) then 
           text = text..'❤️سلام بهترین بابای دنیا💖\n\nTurbo ™'
         elseif is_admin2(msg.from.id) then
           text = text..'💜سلام   نخودی💚 \n\n'
         elseif is_owner2(msg.from.id, msg.to.id) then
           text = text..'❣سلام مدیر جون❣ \n\nTurbo ™'
         elseif is_momod2(msg.from.id, msg.to.id) then
           text = text..'💘سلام معاون💞 \n\nTurbo ™'
     else
           text = text..'سلام\n\nTurbo ™'
      end
      else
       text = text..'سلام '..value..'  \n\n'
     end
return text
    
end

return {
  patterns = {


"^[Ss]lm$",
"^سلام$",
"^[Ss][Aa][Ll][Aa][Mm]",
"سلام",
  }, 
  run = run 
}
