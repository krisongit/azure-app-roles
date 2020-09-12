$roleDisplayName = Read-Host -Prompt 'Provide a user friendly name of the App-Role'
$roleDescription = Read-Host -Prompt 'Provide a brief description of the App-Role'
$newGUID         = New-Guid

$output  = "{`n"
$output += "`"allowedMemberTypes`": [`n"
$output += "    `"User`"`n"
$output += "],`n"
$output += "`"description`": `""  + $roleDescription + "`",`n"
$output += "`"displayName`": `""  + $roleDisplayName + "`",`n"
$output += "`"id`": `""  + $newGUID + "`",`n"
$output += "`"isEnabled`": true,`n"
$output += "`"lang`": null,`n"
$output += "`"origin`": `"Application`",`n"
$output += "`"value`": `""  + $roleDisplayName.Replace(' ', '_') + "`"`n"
$output += "}"

Write-Output "`nThe following App-Role definition can be added to the App Manifest file in Azure AD:`n
------------------------------------------------------------------------------------ `n`n$output`n" 


