Feature: Manage articles
  In order to organize site content
  Administrator
  wants to create, read, update, and delete articles
  
  Scenario: Register new article
    Given I am on the new article page
    When I fill in "Title" with "title 1"
    And I fill in "Author" with "author 1"
    And I uncheck "Published"
    And I fill in "Brief" with "brief 1"
    And I fill in "Content" with "content 1"
    And I press "Create"
    Then I should see "title 1"
    And I should see "author 1"
    And I should see "false"
    And I should see "brief 1"
    And I should see "content 1"

  Scenario: Delete article
    Given the following articles:
      |title|author|published|brief|content|
      |title 1|author 1|false|brief 1|content 1|
      |title 2|author 2|true|brief 2|content 2|
      |title 3|author 3|false|brief 3|content 3|
      |title 4|author 4|true|brief 4|content 4|
    When I delete the 3rd article
    Then I should see the following articles:
      |Title|Author|Published|Brief|Content|
      |title 1|author 1|false|brief 1|content 1|
      |title 2|author 2|true|brief 2|content 2|
      |title 4|author 4|true|brief 4|content 4|
