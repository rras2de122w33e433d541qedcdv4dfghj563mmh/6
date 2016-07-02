do

local function run(msg, matches)
    
    local number = matches[2]
    local name = matches[3]
    
    if matches[1] == 'contact' and matches[2] and matches[3] then
send_contact(get_receiver(msg), number, name, '', ok_cb, false)
    end
    if matches[1] == 'contact' and matches[2] and not matches[3] then
        return 'something went wrong!\ncheck again!'
    end
    if matches[1] == 'contact' and not matches[2] and not matches[3] then
        return 'something went wrong!\ncheck again!'
end
end
return {
patterns = {
"^[!/](contact) (.*) (.*)$",
},
run = run
}

end
