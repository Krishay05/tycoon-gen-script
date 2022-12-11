If game.PlaceId == 62124643 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow((Name = "Tutorial Hub", HidePremium = false, SaveConfig = true, config folder = "tutorialConfig"))
   
    
  _G.SoundId = true
    
    function ChangeSoundId()
        while _G.SoundId == true do
            game:GetService("ReplicatedStorage").Remotes.PlayAudio:FireServer({["Pitch"] = 1,["MaxDistance"] = 10000,["Silenced"] = false,["EmitterSize"] = 70,["SoundId"] = "rbxassetid://132455970",["Echo"] = true,["Origin"] = game:GetService("Players").LocalPlayer.Backpack.Handgun.Handle.GunMuzzlePoint1,["Volume"] = 0.4000000059604645},{["Enabled"] = true,["EmitterSize"] = 10,["CurrentAmmo"] = 12,["AmmoPerMag"] = 12,["Volume"] = 1,["SoundId"] = "rbxassetid://3032849569",["Origin"] = game:GetService("Players").LocalPlayer.Backpack.Handgun.Handle.GunMuzzlePoint1,["Pitch"] = 1,["MaxDista
   end
    local Tab1 = Window:MakeTab({
                        Name = "Tab1",
                        Icon = "rbx assetid://4483345998",
                        PremiumOnly = false
                        })
                Tab1:AddToggle({
                        Name = "Tab 1"
                        Default = false
                        Callback = function(Value)
                            _G.SoundId = Value
                            ChangeSoundId()
                            end
                        })
    
    end
OrionLib:Init()
