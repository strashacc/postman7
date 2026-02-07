Feature: Boundary and method validation

Scenario: Very precise coordinates
  Given coordinates contain very long decimal values
  When a GET request is sent
  Then the response status should be 200

Scenario: Mismatched coordinate arrays
  Given two latitude values but one longitude value
  When a GET request is sent
  Then the response status should be 400

Scenario: Empty request parameters
  Given all request parameters are empty
  When a GET request is sent
  Then the response status should be 400

Scenario: Multiple unit values provided
  Given multiple wind speed units are provided
  When a GET request is sent
  Then the response status should be 403
