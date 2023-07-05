Feature: Working with JSON

  Scenario: Json reader parser
    * def jsonObject =
    """
    [
    {
    "name" : "Harry",
    "city" : "Pune",
    "age" : 25
    },
    {
    "name" : "Larry",
    "city" : "Nagpur",
    "age" : 30
    }
    ]
    """
    * print jsonObject
    * print jsonObject[0]
    * print jsonObject[1].name +" "+ jsonObject[1].city + " " + jsonObject[1].age

  Scenario: complex Json reader parser
    * def jsonObject =
    """
    {"menu": {
  "id": "file",
  "value": "File",
  "popup": {
    "menuitem": [
      {"value": "New", "onclick": "CreateNewDoc()"},
      {"value": "Open", "onclick": "OpenDoc()"},
      {"value": "Close", "onclick": "CloseDoc()"}
    ]
  }
}}

    """
    * print jsonObject
    * print jsonObject.menu
    * print jsonObject.menu.popup.menuitem[0]
    * print jsonObject.menu.popup.menuitem[1].value
    * print jsonObject.menu.popup.menuitem[2].onclick