# # Define the API endpoint URL
# # $apiEndpoint = "https://api.example.com/data"
# $apiEndpoint = 'http://api.open-notify.org/astros.json'

# # Make a GET request to the API
# $response = Invoke-RestMethod -Uri $apiEndpoint -Method Get

# # Display the response
# $response

# foreach($item in $response)
# {
#     # TODO - deconstruct the response to get nice data struct and output
# }

#   API KEY = 04b68b57e46a4aeea1115459241801
# https://www.weatherapi.com/my/
#  http://api.weatherapi.com/v1/current.json?key=04b68b57e46a4aeea1115459241801&q=65203&aqi=no

$apiEndpointWeather = 'http://api.weatherapi.com/v1/current.json?key=04b68b57e46a4aeea1115459241801&q=65203&aqi=no'
$response = Invoke-RestMethod -Uri $apiEndpointWeather -Method Get
Write-Output $response

# Example variable
$myVariable = "Hello, World!"

# Get the type using GetType() method
$variableType = $myVariable.GetType()

# Display the type
Write-Output "Type of `$myVariable is: $($variableType.FullName)"

# JSON string
$jsonString = '{"name": "John", "age": 30, "city": "New York"}'

# Convert JSON string to PowerShell object
$objectFromJson = $jsonString | ConvertFrom-Json

# Display the resulting object
Write-Output "Name: " $objectFromJson.name "Age: " $objectFromJson.age "City: " $objectFromJson.city





