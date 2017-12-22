Feature: Edis Home Page

  Scenario: To launch EDIS home page
    Given I am on EDIS home page
    When I navigate to login screen
    And enter username autotest
    And enter password autotest987!
    And I login
    Then I should see "United States International Trade Commission" on the page


#    un: autotest pw: autotest987! (primary one)
#    un: autotest1 pw: autotest13!
#    un: autotest12 pw: autotest12!
#    un: autotest11, pw: autotest15!
  