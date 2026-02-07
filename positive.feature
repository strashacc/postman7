Feature: Retrieve weather data successfully

Scenario: Valid coordinates return current temperature
  Given valid latitude and longitude for London
  When a GET request is sent with current temperature requested
  Then the response status should be 200
  And current weather data should be returned

Scenario: Valid coordinates with alternate units
  Given valid coordinates with wind speed in mph and precipitation in inches
  When a GET request is sent
  Then the response status should be 200
  And weather data should use requested units

Scenario: Multiple current weather values requested
  Given valid coordinates
  When a GET request requests temperature and apparent temperature
  Then the response status should be 200
  And both values should be present in the response

Scenario: Multiple coordinates request
  Given multiple valid latitude and longitude pairs
  When a GET request is sent
  Then the response status should be 200
  And weather data should be returned for all coordinates

Scenario: Hourly forecast requested
  Given valid coordinates
  When hourly temperature data is requested
  Then the response status should be 200
  And hourly data should be returned
