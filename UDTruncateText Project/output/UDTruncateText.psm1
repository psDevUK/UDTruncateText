$IndexJs = Get-ChildItem "$PSScriptRoot\index.*.bundle.js"
$AssetId = [UniversalDashboard.Services.AssetService]::Instance.RegisterAsset($IndexJs.FullName)

function New-UDTruncateText {
    <#
    .SYNOPSIS
    Creates a new component
    
    .DESCRIPTION
    Creates a new component
    
    .PARAMETER Id
    The ID of this editor

    .PARAMETER Text
    Text for the component

    .EXAMPLE
    New-UDComponent -Text 'Hello, world!'
    #>
    
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [int]$Lines,
        [Parameter()]
        [string]$Text,
        [Parameter()]
        [string]$TruncateText = "...",
        [Parameter()]
        [string]$HyperLink,
        [Parameter()]
        [string]$ReadOn = "Read On"
    )

    End {
        @{
            assetId = $AssetId 
            isPlugin = $true 
            type = "udtruncatetext"
            id = $Id

            line = $Lines
            truncateText = $TruncateText
            text = $Text
            href = $HyperLink
            readon = $ReadOn
        }
    }
}