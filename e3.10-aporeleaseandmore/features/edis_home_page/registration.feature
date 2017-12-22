Feature: Register new user


Scenario: Register user
  Given I am on EDIS home page
  And I navigate to register page
  And I accept terms of user agreemnet
  And I enter first name as "Test"
  And I enter middle name as "F"
  And I enter last name as "User"
  And I select office as "Office of Chief Information Officer"
  And I enter email address as "Bennie.Caesar@usitc.gov" to register new user
  And I enter Login ID to register new user
  And I enter password as "Autoreg1234!"
  And I enter confirm password as "Autoreg1234!"
  And I select Security Question 1 as "What city was your mother/father born in?"
  And I enter Answer 1 as "test"
  And I select Security Question 2 as "What grade school did you go to?"
  And I enter Answer 2 as "test"
  And I click register
  And I confirm registration
  #Then I should see "Thank you for registering with MTBPS" on the page