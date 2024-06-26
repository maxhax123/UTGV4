loadstring(game:HttpGet("https://raw.githubusercontent.com/Blukezz/UTG-V4/main/Lib.lua"))()

local Main_ = libary:CreateMain()

-- Credit button at the top
Main_:CreateButton(
    "This GUI was by Blukezz, but Max added these buttons",
    "none",
    "",
    "",
    "",
    "",
    function()
        print("Credit: Blukezz for the original GUI, Max for additional buttons")
    end
)

-- Settings section at the top
Main_:CreateButton(
    "Disable Fling Health Bar",
    "none",
    "",
    "",
    "",
    "",
    function()
        DisableFlingHealthBar = true
    end
)

Main_:CreateButton(
    "Enable Fling Health Bar",
    "none",
    "",
    "",
    "",
    "",
    function()
        DisableFlingHealthBar = false
    end
)

Main_:CreateButton(
    "Disable Star Glitcher FX",
    "none",
    "",
    "",
    "",
    "",
    function()
        DisableFX = true
    end
)

Main_:CreateButton(
    "Enable Star Glitcher FX",
    "none",
    "",
    "",
    "",
    "",
    function()
        DisableFX = false
    end
)

-- Table containing button names and their respective URLs
local scripts = {
    {Name = "ak47", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/AK-47"},
    {Name = "banhammer", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Ban%20Hammer"},
    {Name = "banisher", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Banisher"},
    {Name = "dearsister", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Dearsister"},
    {Name = "gale fighter", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Gale%20Fighter"},
    {Name = "goner", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Goner"},
    {Name = "good cop bad cop", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Good%20Cop%20Bad%20Cop"},
    {Name = "karambit", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Karambit"},
    {Name = "dance", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Krystal%20Dance"},
    {Name = "lightning cannon", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Lightning%20Cannon"},
    {Name = "linked sword", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Linked%20Sword"},
    {Name = "motorcycle", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Motorcycle"},
    {Name = "neptunian v", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Neptunian%20V"},
    {Name = "pistol", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Pistol"},
    {Name = "sad killer", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sadist%20Genocider"},
    {Name = "sniper", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sniper"},
    {Name = "star glitcher", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Star%20Glitcher"},
    {Name = "studio dummy", Url = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Studio%20Dummy"}
    }

-- Create buttons for each script
for _, script in ipairs(scripts) do
    Main_:CreateButton(
        "Load " .. script.Name,
        "none",
        "",
        "",
        "",
        "",
        function()
            loadstring(game:HttpGet(script.Url))()
        end
    )
end
