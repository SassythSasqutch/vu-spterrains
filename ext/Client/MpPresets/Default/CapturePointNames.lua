ResourceManager:RegisterInstanceLoadHandler(Guid(''), Guid(''), function(instance)

    local thisInstance = InterfaceDescriptorData(instance)
    thisInstance:MakeWritable()

    thisInstance.fields[0].value = 'CString "Capture Point A"' -- Default 
    thisInstance.fields[1].value = 'CString "Capture Point B"' -- Default 
    thisInstance.fields[2].value = 'CString "Capture Point C"' -- Default 
    thisInstance.fields[3].value = 'CString "Capture Point D"' -- Default 
    thisInstance.fields[4].value = 'CString "Capture Point E"' -- Default 

end)

-- TODO: Set this