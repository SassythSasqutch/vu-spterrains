ResourceManager:RegisterInstanceLoadHandler(Guid('0964415F-1A6E-4BA3-A11D-EEDDF2DB9FD2'), Guid('184EB6A9-E532-8D64-0AC2-551AD903FF96'), function(instance)

    local thisInstance = InterfaceDescriptorData(instance)
    thisInstance:MakeWritable()

    thisInstance.fields[15].value = 'CString "Capture Point A"' -- Default Café
    thisInstance.fields[17].value = 'CString "Capture Point B"' -- Default Ticket hall
    thisInstance.fields[18].value = 'CString "Capture Point C"' -- Default Platform

end)