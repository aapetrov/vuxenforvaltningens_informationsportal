@api
Feature: Kursmall duplicate prevention
  Show error message when you try to create existing kursmall
  As School editor
  User see correct warning message if hi try to create existing kursmall

  @javascript
  Scenario: try to duplicate kursmall
    Given I switch to swedish
    And I am on "user/login"
    And I fill in "edit-name" with "editor"
    And I fill in "edit-pass" with "editor"
    Then I press "edit-submit"
    Then I am on "node/add/course-template"
    And I fill in "edit-title" with "Tyska 3"
    And I fill in "edit-field-course-number-of-points-und-0-value" with "100"
    And I fill in "edit-field-course-national-code-und-0-value" with "MODDEU03"
    And I press "edit-submit"
    And I should be on "node/add/course-template"
    And I wait for 20 seconds
    And I should see the text "Felmeddelande! Det finns redan en kursmall med detta innehåll"
