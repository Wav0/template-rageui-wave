menu_template = RageUI.CreateMenu("Name Menu", "Description Menu")

menu_template.Closed = function()
    menu_isopen = false 
end

Keys.Register("F2", "F2", "Description", function()
    OpenMenuTemplateWave()
end)

function OpenMenuTemplateWave()
    if menu_isopen do 
        return 
    else 
        menu_isopen = true 
        RageUI.Visible(menu_template, true)

        Citizen.CreateThread(function()
            while menu_isopen do 
                Wait(0)
                RageUI.IsVisible(menu_template, function()
                end)
            end
        end)
    end
end