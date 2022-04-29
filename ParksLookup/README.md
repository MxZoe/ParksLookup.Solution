# Parks Lookup Api

#### By _**Zoe Weinstein**_

#### An api that allows users to access a database of state and national parks

## Technologies Used

* SQL
* C#
* .Net
* Razor
* CSS
* HTML
* Swagger

## Description

This api lets the user access a database of national parks.
The endpoints for this api are documented with swagger and are listed below.
Endpoints:
## Setup/Installation Requirements

* Go to https://github.com/MxZoe/ParksLookup.Solution to clone or download the project. 
* To add the sql server you must create a file named appsettings.json and add it to your .gitignore file
* The appsettings.json file should then have the following:
{
    "ConnectionStrings": {
        "DefaultConnection": "Server=localhost;Port=3306;database=zoe_weinstein;uid=root;pwd=[YOUR-PASSWORD-HERE];"
    }
}
* Next, in the terminal run the command "dotnet ef migrations add initial" followed by the command "dotnet ef database update" to get the database connected and updated. You should run these commands whenever you update the models. Simply substitute the "initial" in the dotnet ef migrations command with an appropriate descriptor.
* To run the api use the command dotnet run
* To view the swagger documentation, run the api using the above instruction, then in your web browser go to localhost:5000 and the Swagger documentation will be shown.
## Known Bugs

## License

https://opensource.org/licenses/MIT

Copyright (c) 2022. Zoe Weinstein