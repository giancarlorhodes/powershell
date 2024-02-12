#functions

# Define the function
function FindStringByFirstLetter {
    param (
        [char]$character,
        [string[]]$stringArray
    )

    # Iterate over each string in the array
    foreach ($str in $stringArray) {
        # Check if the first letter of the string matches the specified character
        if ($str[0] -eq $character) {
            # Return the first matching string
            $lastcharvowel = IsLastCharacterVowel $str

            if($lastcharvowel)
            {
                return $str
            }
            #continue
        }
    }

    # If no match is found, return a default value (e.g., empty string or $null)
    return $null
}


function IsLastCharacterVowel {
    param (
        [string]$inputString
    )

    # Check if the input string is not empty
    if (-not [string]::IsNullOrEmpty($inputString)) {
        # Get the last character of the string
        $lastCharacter = $inputString[-1]

        # Check if the last character is a vowel (case-insensitive)
        $isVowel = $lastCharacter -match '[aeiouAEIOU]'

        return $isVowel
    }

    # Return false for empty strings
    return $false
}




# the word is chair 
# name a county that starts with each letter in chair but end is vowel

Write-Host "I will find countries that start with each letter of the word you enter
but those country names must end in a vowel"
#$_vowels = @("a", "e", "i", "o", "u", "y")
$_inputWord = Read-Host "Enter the word to use "

$_psobj = Get-Content -Raw world_countries_list.json | ConvertFrom-Json # PSObject thingy
$_array = @($_psobj) # empty array


#Write-Output $_array

#$object = Get-Process
#$object.Name    

#$baseobj = $object.PSObject.BaseObject

$_countryNames = New-Object System.Collections.ArrayList
# foreach ($property in $_psobj.PSObject.Properties) {
#     Write-Host "Property Name: $($property.Name), Value: $($property.Value)"
    
# } 


foreach ($item in $_array) {
    #$_current_name = $item.name
    # $_current_code = $item.code
    # Write-Host "Element: $item, $item"
    # Write-Host "Name: $_current_name, Code: $_current_code"
    $_countryNames.Add($item.name)
}

# # TESTING
# foreach ($item in $_countryNames)
# {
#     Write-Host "Country: $item"
# }

# take each letter in the word
# Iterate over each letter in the string
# Iterate over each letter in the string
foreach ($letter in $_inputWord.ToCharArray()) {
    # Write-Host "Letter: $letter"
    $_strChar = $letter.ToString().ToUpper()
    # Write-Host $_strChar
    $_firstChar = $_strChar[0]

    $result = FindStringByFirstLetter -character $_firstChar -stringArray $_countryNames
    Write-Host "Country match is $result"
    
}





