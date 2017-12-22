Feature: 3460,3461-Help Page-Help Documents Library

  Scenario: To launch help documents library
    Given I navigate to edis main page
    And I go to help tab
    Then I select help documents library

  Scenario: To navigate to who should register
    Given I navigate to edis main page
    And I go to help tab
    And I select help documents library
    Then I navigate to who should register

  Scenario: To navigate to Edis3 user guide
    Given I navigate to edis main page
    And I go to help tab
    And I select help documents library
    Then I navigate to edis3 user guide

  Scenario: To navigate to edis3 cd submission guide
    Given I navigate to edis main page
    And I go to help tab
    And I select help documents library
    Then I navigate to edis3 cd submission guide

  Scenario: To navigate to edis3 web service guide
    Given I navigate to edis main page
    And I go to help tab
    And I select help documents library
    Then I navigate to edis3 web service guide

  Scenario: To navigate to frequently asked questions
    Given I navigate to edis main page
    And I go to help tab
    And I select help documents library
    Then I navigate to frequently asked questions


  Scenario: To navigate to handbook on filing procedures
    Given I navigate to edis main page
    And I go to help tab
    And I select help documents library
    Then I navigate to handbook on filing procedures

  Scenario: To navigate to guidance on copy requirements
    Given I navigate to edis main page
    And I go to help tab
    And I select help documents library
    Then I navigate to guidance on copy requirements

  Scenario: To navigate to requesting a waiver to electronic filing
    Given I navigate to edis main page
    And I go to help tab
    And I select help documents library
    Then I navigate to requesting a waiver to electronic filing

  Scenario: Make sure edis help telephone number is there
    Given I navigate to edis main page
    And I go to help tab
    And I select help documents library
    Then I should see telephone number as "(202)205-3347 (EDIS)"
#    Then I should see documents to EDIS