# language: en

Feature: Solve PHP LFI challenge
    From site Wechall
    From php training category
    With my username jaguir11

    Background:
        Given the fact that I am registered on the site wechall
        And I have Windows 7 Operating System

    Scenario: First failed attempt
        Given a PHP script
        And an example of the script in action
        And a clue that the system is vulnerable to LFI
        When I try to include the file at the end of the URL
        And I get a file extention error
        Then I decide to read some more about LFI

    Scenario: Successful solution
        Given a PHP script
        And an example of the script in action
        And my last failed attempt
        When I read about LFI, I learned about the null byte terminator
        And I try to include the file again ending with the null byte
        Then I solve the challenge
