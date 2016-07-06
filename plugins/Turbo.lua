do
local function admin_list(msg)
    local data = load_data(_config.moderation.data)
        local admins = 'admins'
        if not data[tostring(admins)] then
        data[tostring(admins)] = {}
        save_data(_config.moderation.data, data)
        end
        local message = '👥Admins :\n'
        for k,v in pairs(data[tostring(admins)]) do
                message = message .. '> @' .. v .. ' [' .. k .. '] ' ..'\n'
        end
        return message
end
local function run(msg, matches)
local uptime = io.popen('uptime'):read('*all')
local admins = admin_list(msg)
local data = load_data(_config.moderation.data)
local group_link = data[tostring(1045086781)]['settings']['set_link'] --put your support id here
local github = 'github.com/**'
local our = 'yeo.ir/TurboBoT'
local space = '➖➖➖➖➖➖➖➖➖'
if not group_link then
return ''
end
return ""..space.."\nTurbo Anti Spam BoT V5\n"..space.."\n    \n👥SoduBOT\n@ArmanTurbo\n@Xx_AE_xX\n\n📢 Channel : soon!\n\n"..admins.."\n\n🙏Special thanks to\nArman-Turbo [Developer] & [Manager] & [Founder]\nAmir-viper [Developer] & [designer]\nDead [designer] & [Admin]\nAnd All My Friends\n\nServer specifications :\nup Time :"..uptime.."\nMacintosh A9 Procesor:\nUbuntu 14.04\nCPU : 16 Core\nRAM : 32 GB\nHDD : 8 TB\nIPN : 7 MB/S\nPort : 2 MB/s\n"..space.."\nGithub :\n"..github.."\nCheckout :\n"..our.."\n"..space.."\n📝 Please send your feedback\nThe command Feedback [text]\nSupport link :\n"..group_link or none
end
return {
patterns = {
"^[/#!]([Tt]urbo)$",
"^[Tt][Uu][Rr][Bb][Oo]$",
},
run = run
}
end
