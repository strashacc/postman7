Feature: Handle invalid weather API requests

Scenario: Missing latitude parameter
  Given longitude is provided but latitude is missing
  When a GET request is sent
  Then the response status should be 403

Scenario: Latitude provided as string
  Given latitude is provided as text
  When a GET request is sent
  Then the response status should be 400

Scenario: Invalid current weather parameter
  Given an incorrect current weather field is requested
  When a GET request is sent
  Then the response status should be 400

Scenario: Invalid hourly parameter
  Given an incorrect hourly parameter is requested
  When a GET request is sent
  Then the response status should be 400

Scenario: Invalid wind speed unit
  Given an unsupported wind speed unit is provided
  When a GET request is sent
  Then the response status should be 400

Scenario: Invalid precipitation unit
  Given an unsupported precipitation unit is provided
  When a GET request is sent
  Then the response status should be 400

Scenario: Wrong endpoint
  Given an incorrect endpoint
  When a GET request is sent
  Then the response status should be 404

Scenario: Unsupported HTTP POST method
  Given a POST request is sent to the forecast endpoint
  Then the response status should be 415

Scenario: Unsupported HTTP PUT method
  Given a PUT request is sent to the forecast endpoint
  Then the response status should be 415

Scenario: Unsupported HTTP DELETE method
  Given a DELETE request is sent to the forecast endpoint
  Then the response status should be 415