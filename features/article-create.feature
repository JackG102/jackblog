@api
  Feature: Article Create
    In order to create an article
    As an administrator
    I should be able to visit node create page and create an article

    Scenario: An administrator can create an article
      Given I am logged in as a user with the "administrator" role
      When I am at "/node/add/article"
      Then I should see the text "Create Article"

    Scenario: Anonymous users cannot create an article
      Given I am an anonymous user
      When I am on "/node/add/article"
      Then I should get a 403 HTTP response