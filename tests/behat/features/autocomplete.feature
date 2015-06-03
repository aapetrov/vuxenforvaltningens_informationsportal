Feature: Search autocomplete
  Check searchfield autocomplete
  As visitor
  Autocomplete works correct

  @javascript
  Scenario: Autocomplete works correct
    Given I am on homepage
    And I select the first autocomplete option for "adm" on the "keys" field
    And I should see the text "Administration 1"
    Then I am on "/search-courses"
    And I select the first autocomplete option for "pro" on the "keys" field
    And I should see the text "Programmering 1"
