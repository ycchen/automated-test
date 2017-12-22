Feature: Admin user create firm

  #*****Change Firm name and Location code on every run for scenario 1****

  Scenario: Admin user will create a firm
    Given I navigate to edis page
    And I go to Admin tab
    And I select Create Firm from the admin tab
    And I click Submit to confirm Firm creation
    Then I should see "Firm/Org name is a required field." on the page
    Then I should see "Firm/Org address is a required field." on the page
    Then I should see "Firm/Org city is a required field." on the page
    Then I should see "Firm/Org state is a required field" on the page
    Then I should see "Firm/Org zip code is a required field" on the page
    Then I should see "Firm/Org country is a required field" on the page
    Then I should see "Firm/Org email is a required field" on the page
    Then I should see "Firm/Org telephone number is a required field" on the page
    And I enter firm name as "Test Firm 3"
    And I enter firm address as "6710 Test Way"
    And I enter firm suite as "Suite 550"
    And I enter city as "Alexandria"
    And I select state as "Virginia"
    And I enter zip code as "22306"
    And I select country as "United States"
    And I enter location code as "123455"
    And I enter contact email as "test@t.com"
    And I enter website as "thisIsATest.com"
    And I enter telephone number as "789-456-1230"
    And I enter fax number as "123-045-6789"
   # And I click Submit to confirm Firm creation


  Scenario: Admin user attempt create a firm with same Name and Location which should throw an error
    Given I navigate to edis page
    And I go to Admin tab
    And I select Create Firm from the admin tab
    And I enter firm name as "Test Firm 2"
    And I enter firm address as "6710 Test Way"
    And I enter firm suite as "Suite 550"
    And I enter city as "Alexandria"
    And I select state as "Virginia"
    And I enter zip code as "22306"
    And I select country as "United States"
    And I enter location code as "123456"
    And I enter contact email as "test@t.com"
    And I enter website as "thisIsATest.com"
    And I enter telephone number as "789-456-1230"
    And I enter fax number as "123-045-6789"
    And I click Submit to confirm Firm creation
    Then I should see "The entered Firm/Org name and location code already exist" on the page
    Then I should see "The entered Firm/Org name and location code already exist" on the page