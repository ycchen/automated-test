Feature:3677 Motions and Orders Under Document Editor Page

#  Filing an Order by disposing 2 motion status

  Scenario: 3677 Submit motions and order and access them in document editor page
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I select "Sec 337" as investigation type for submission
    And I submit and continue
    And I click No
    And I select investigation phase for submission as "Advisory"
    And I submit and continue
    And I search for an investigation "337-406"
    And I select one of the investigation
    And I submit and continue
    And I select "Order" as document type for filing
    And I submit and continue
    And I select the first motions that will be disposed of by this order by checking the box
    And I select the first disposition status on submission page as "Granted"
    And I submit and continue
    And I select document security level as "Yes"
    And I submit and continue
    And I enter title for document as "Selected Order as Document Type"
    And I submit and continue
    And I enter on behalf of "USITC autotest"
    And I submit and continue
    And I add file "Test.pdf"
    And I enter text for first attachment as "Attached test files"
    And I submit and continue
    Then I should see "Submission Confirmation page" on the page
    And I submit and continue
   # And I confirm submission
    And I should see "Notice of Receipt" on the page
    And I should see "Order" on the page


  Scenario: Dispose multiple motions for the document type order
    Given I navigate to edis main page
    Then I navigate to submission tab
    And I submit and continue
    And I select "Sec 337" as investigation type for submission
    And I submit and continue
    And I click No
    And I select investigation phase for submission as "Advisory"
    And I submit and continue
    And I search for an investigation "337-406"
    And I select one of the investigation
    And I submit and continue
    And I select "Order" as document type for filing
    And I submit and continue
    And I select the first motions that will be disposed of by this order by checking the box
    And I select the first disposition status on submission page as "Denied"
    And I select the second motions that will be disposed of by this order by checking the box
    And I select the second disposition status on submission page as "Denied in Part"
    And I select the third motions that will be disposed of by this order by checking the box
    And I select the third disposition status on submission page as "Granted"
    And I select the fourth motions that will be disposed of by this order by checking the box
    And I select the fourth disposition status on submission page as "Granted in Part"
    And I submit and continue
    And I select document security level as "Yes"
    And I submit and continue
    And I enter title for document as "Selected Order as Document Type"
    And I submit and continue
    And I enter on behalf of "USITC autotest"
    And I submit and continue
    And I add file "Test.pdf"
    And I enter text for first attachment as "Attached test files"
    And I submit and continue
    Then I should see "Submission Confirmation page" on the page
    And I submit and continue
   # And I confirm submission
    And I should see "Notice of Receipt" on the page
    And I should see "Denied" on the page
    And I should see "Granted in Part" on the page


