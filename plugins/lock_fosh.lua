local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['fosh'] then
                lock_fosh = data[tostring(msg.to.id)]['settings']['fosh']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_fosh == "yes" then
       delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
"(ک*س)$",
"کیر",
"کص",
"کــــــــــیر",
"کــــــــــــــــــــــــــــــیر",
"کـیـــــــــــــــــــــــــــــــــــــــــــــــــــر",
"ک×یر",
"ک÷یر",
"ک*ص",
"کــــــــــیرر",
"kos",
"kir",
"mame",
"sexy",
"hashari",
"kooni",
"koon",
"jende",
"madarkharab",
"madar kharab",
"fuck",
"gaedamet",
"ghaeidamet",
"jaghi",
"khaye",
"jend",
"tokhm",
"[Kk][Oo][Ss][Nn][Aa][Nn][Tt]",
"[Kk][Oo][Nn][Ii]",
"[Kk][Ii][Rr][Ii]",
"[Kk][Ii][Rr]",
"[Jj][Ee][Nn][Dd][Ee]",
"[Kk][Hh][Aa][Rr]",
"[Kk][Oo][Ss][Ii]",
"کونی",
"کص",
"کیری",
"کسکش",
"کونده",
"کس ننه",
"گاییدمت",
"گاییدم",
"گاییدن",
"نگاییدم",
"بگا",
"دیوث",
"اوبی",
"قحبه",
"بسیک",
"سیکتر",
"سیک",
"خوارکسته",
"خوارکسده",
"ممه",
"سکسی",
"حشری",
"جقی",
 "فاک",
"خایه",
"خوایه",
"جند",
"جنده",
"قهبه",
"مادر قهوه",
"مادرقهوه",
"مادرخراب",
"تخم حروم",
  },
  run = run
}
