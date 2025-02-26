Feature: Post user https://api.demoblaze.com/signup
  Background:
    * url "https://api.demoblaze.com"
    * path "/signup"
  @SingUp
  Scenario Outline: Create user <idcase>
    When request
    """
    {
  "<username>": "<username_value>",
  "<password>": "<password_value>",
    }
    """
    And method POST
    Then status <statuscode>
    And match response == <response>
    Examples:
      |idcase|id|username|username_value   |password  |password_value|statuscode|response|
      |case 1|id|username|mtroya06   | password |mtroya01|200 |'""\n'       |
      |case 2|id|username|mtroya01    | password |mtroya01|200 |{"errorMessage":"This user already exist."}|
