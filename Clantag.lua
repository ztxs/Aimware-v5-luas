local silentname = 0
local windowmade = 0
local windowactive = 0
local origName = ""

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

local window = gui.Window(window, "Clantag Changer", 200, 200, 180, 172)
local function refresh(x1,y1,x2,y2,active)
  if windowmade == 0 then
    local grp1 = gui.Groupbox(window, "Clantag", 0,10,175,130)
    local clantag =  gui.Editbox( grp1, "Clantag","" )
    local resetbutton = gui.Button(grp1, "Reset Clantag", function()

    setName(origName)
    end)
    local output = ""
    local button = gui.Button(grp1, "Set Clantag", function()
    local letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789' "

    local input = clantag:GetValue()

    for i=1, #input do
      local char = input:sub(i,i)
      output = output .. boldletters[letters:find(char)]
      setName(output .. " " .. origName)
    end
    output = ""
    end)

    windowmade = 1
  end
end

local custom  = gui.Custom( window, "Options", 0, 0, 0, 0, refresh)

local function openwindow()
  if gui.Reference("MENU"):IsActive() and windowactive == 0 then
    window:SetActive(1)
    windowactive = 1
  elseif not gui.Reference("MENU"):IsActive() and windowactive == 1 then
    window:SetActive(0)
    windowactive = 0
  end
end

callbacks.Register("Draw", openwindow)

local function makenamesilent()
  if windowmade == 1 then
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
end

callbacks.Register("Draw",makenamesilent)
