
Feature: Post user https://api.demoblaze.com/login
  Background:
    * url "https://api.demoblaze.com"
    * path "/login"
  @Login
  Scenario Outline: Login user <idcase>
    When request
    """
    {
  "<username>": "<username_value>",
  "<password>": "<password_value>",
    }
    """
    And method POST
    Then status <statuscode>
    And match response contains <response>
    Examples:
      |idcase|id|username|username_value   |password  |password_value|statuscode|response|
      |case 1|id|username|mtroya01   | password |mtroya01|200 |'Auth_token'       |
      |case 2|id|username|mtroya20    | password |mtroya013|200 |{"errorMessage":"User does not exist."}{"errorMessage":"Wrong password."}|
      |case 2|id|username|mtroya01    | password |1111111|200 |{"errorMessage":"Wrong password."}|
