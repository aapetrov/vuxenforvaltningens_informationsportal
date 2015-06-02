Feature: Preamble text
  Check preamble text no login, register, my planning pages
  As visitor, as editor
  Text is present and correct

  Scenario: Check text
    Given I am on "register"
    And I should see the text "På denna sida skapar du ett konto för att kunna använda Min planering. På sidan Min planering finns en sammanställning över de kurser och utbildningar du väljer att spara. Det finns en veckoöversikt och en ansökningslista. Listan är ett stöd när du ska göra din ansökan i ansökningswebben."
    Then I am on "user/login"
    And I should see the text "På denna sida loggar du in för att komma åt Min planering. På sidan Min planering finns en sammanställning över kurser och utbildningar du sparat."
    And I fill in "edit-name" with "editor"
    And I fill in "edit-pass" with "editor"
    Then I press "edit-submit"
    Then I am on "http://malmo-live.propeople.com.ua/my-planning"
    And I should see the text "Här hittar du de kurser och utbildningar som du sparat. Det är en veckoöversikt och en ansökningslista. Listan är ett stöd när du ska göra din ansökan i ansökningswebben."