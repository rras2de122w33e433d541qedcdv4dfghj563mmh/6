do
function run(msg, matches)
  if is_sudo(msg) then
    return 
end
  local poker = {'پوکر نگاییدم😐','پوکر نده جنده 😐😐','کیونی چرا پوکر میدی',
                  'کیرم تو پوکر😐','گاییدم😐',' نگاییدم😐',
                  'کیر خر پوکر نده😐',' نفر بعدی بوکر بده بن 😐','کیری پوک نده😐',
                  'مگه کونت گزاشتم پوکر میدی؟😐',' 😐',
                  'عمه اونی که پوکر داد رو گاییدم😐',
                  'بازم پوکر؟😐',' گه پوکر نبود تو چیکار میکردی؟😐',
                  'کون که نمیدی پوکر هم میدی؟😐',' کسی که کص یا شاخ نباشد حق فرستادن پوکر را ندارد😐','D:',
                  'نگاییدم😐'}
  return poker[math.random(#poker)]
end

return {
  description = "poker face",
  usage = "send poker random  ",
  patterns = {"😐"},
  run = run
}

end

