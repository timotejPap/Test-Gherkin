Feature: Login, sending an e-mail message and logout

    User should log in to e-mail account, send an e-mail message and logout

    Scenario: User can login to e-mail account
    Given user is on a page with the login form
    And enters login data "timotejpap"
    And enters login data "Xw2Veo@pR^CBKq"  //this is invalid password
    When user clicks login button
    Then user is logged in


    Scenario: User can send an e-mail
    Given user is in e-mail account
    And clicks on "Napísať správu"
    When user enters some message
    And clicks on "Odoslať"
    Then e-mail is sent


    Scenario: User can logout
    Given user already sent an e-mail
    And click on "Odhlásiť"
    Then user is logged out
