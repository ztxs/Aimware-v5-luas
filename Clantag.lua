local silentname = 0
local origName = ""
local time = 0
local timedouble = globals.CurTime()
local rightname = 1
local clantagis = ""
local input = ""
local inputcc = ""
local lenght = 0
local n = 0
local n1 = 1
local n2 = 0

local function getOriginalName()

  origName = client.GetConVar("Name")

end
getOriginalName()

local function setName(name)
  client.SetConVar("name", name);
end

local boldletters = {


  
  "𝗮","𝗯","𝗰","𝗱","𝗲","𝗳","𝗴","𝗵","𝗶","𝗷","𝗸","𝗹","𝗺","𝗻","𝗼","𝗽","𝗾","𝗿","𝘀","𝘁","𝘂","𝘃","𝘄","𝘅","𝘆","𝘇",
  "𝗔","𝗕","𝗖","𝗗","𝗘","𝗙","𝗚","𝗛","𝗜","𝗝","𝗞","𝗟","𝗠","𝗡","𝗢","𝗣","𝗤","𝗥","𝗦","𝗧","𝗨","𝗩","𝗪","𝗫","𝗬","𝗭",
  "𝟬","𝟭","𝟮","𝟯","𝟰","𝟱","𝟲","𝟳","𝟴","𝟵","'"," "
}

local ccmenu = gui.Tab(gui.Reference("Settings"), "Clantag Changer", "Clantag Changer")
local menubox = gui.Groupbox(ccmenu, "Fake animated clantag changer by atk3001", 16, 16, 608, 500)
local c =  gui.Editbox(menubox, "Clantag","")
local button = gui.Button(menubox, "Set Clantag", function()
  input = c:GetValue()
  n = string.len(input)
  n1 = 1
  n2 = n + 1
  inputcc = input .. " " .. input
  lenght = string.len(input) * 2 + 1
end)
local animate = gui.Checkbox(menubox,"Start.animated.clantag", "Start animated clantag", false );

local function changename()
if animate:GetValue() and (entities.GetLocalPlayer() ~= nil and engine.GetServerIP() ~= nil and engine.GetMapName() ~= nil)then
  curutime = globals.CurTime()
  if curutime >= timedouble + 1 then
    timedouble = globals.CurTime()
    time = time + 1
    local output = ""
    if n2 <= lenght then
      clantagis = string.sub(inputcc, n1, n2)

      local letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789' "
      for i=1, #clantagis do
        local char = clantagis:sub(i,i)
        output = output .. boldletters[letters:find(char)]
      end

      setName(output .. " " .. origName)
      n1 = n1 + 1
      n2 = n2 + 1
      output = ""
      end
    if n2 > lenght then
      local letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789' ."
      for i=1, #input do
        local char = input:sub(i,i)
        output = output .. boldletters[letters:find(char)]
      end

      setName(output .. "   " .. origName)
      n1 = 1
      n2 = n + 1
      output = ""
    end
  end
  rightname = 0
elseif rightname == 0 then
  setName(origName)
  rightname = 1
end
end

callbacks.Register("Draw", changename)

local function makenamesilent()
    local lp = entities.GetLocalPlayer()
    if silentname == 0 and lp ~= nil then
      setName("\n\xAD\xAD\xAD\xAD")
      curtime = globals.CurTime()
      silentname = 1
    end
    if silentname == 1 and globals.CurTime() >= curtime + 0.1 then
      setName(origName)
      silentname = 2
    end

    if lp == nil then
      silentname = 0
    end
end

callbacks.Register("Draw",makenamesilent)
Scroll to TopScroll to Bottom
8