Feature: Contact me (comment)

  @contact
  Scenario: Living a Comment in contact me page
    Given I navigate to Contact Me page
    When I login with user name "admin" and password "admin"
    When I verify Contact Me page loaded
    Then I write my comment "Hello, i'am QA automation engineer at Russian Federation"
    And I click on Post Comment button
