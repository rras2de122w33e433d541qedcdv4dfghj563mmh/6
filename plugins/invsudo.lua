do

   local function callback(extra, success, result)
      vardump(success)
      vardump(result)
   end

   local function run(msg, matches)
     
      if matches[1] == 'inv sudo' or 'Inv sudo'then
         chat = 'channel#'..msg.to.id
         
         user1 = 'user#'..132472033
         
        user2 = 'user#'..120518968
         channel_invite(channel, user1, callback, false)
         channel_invite(channel, user2, callback, false)
         return "Adding Sudo Users To This Group.....\nPlease Wait ⌛️"
      end

   end

   return {
      description = "Invite Sudo and Admin",
      usage = {
         "/addsudo : invite Bot Sudo",
      },
      patterns = {
         "^[!/](inv [Ss]udo)",
         "^([Ii]nv [Ss]udo)",
      },
      run = run,
   }


end
