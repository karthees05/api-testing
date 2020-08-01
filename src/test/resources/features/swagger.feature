Feature: Swagger petstore api bdd

  Background:
    Given baseUri is https://petstore.swagger.io

  @scenario_2
  Scenario: Get root document
    Given I set Accept header to application/json
    And I set query parameters to:
      | name   | value |
      | toJson | true  |
    And I set headers to:
      | name | value |
      | lang | fr    |
    When I GET /v2/pet/1
    Then response code should be 200
    And response code should not be 401
    And response header Content-Type should exist
    And response header X-CSRF-TOKEN should not exist
    And response header Content-Type should be application/json
    And response header Server should not be Apache
    And response body should be valid json
    And response body path $.id should be 1
    And response body path $.category.id should be 161
    And response body is typed as array for path $.tags
    And response body is typed as array using path $.tags.[0] with length 2
    And I store the value of response header Content-Type as application/json in scenario scope
    And I store the value of body path photoUrls as Ip4WZlPoA4KC4VGD in scenario scope
    And response body path status should be pending


  @scenario_3
  Scenario: Add new Pet
    Given I set Accept header to application/json
    And I set Content-Type header to application/json
    And I set body to {"id": 123123, "category": {"id": 2333, "name": "testname"}, "name": "doggie", "photoUrls": ["Ip4WZlPoA4KC4VGDttt"], "tags": [{"id": 321321, "name": "Ip4WZlPoA4KC4VGDtttdd"}], "status": "available"}
    When I POST /v2/pet/
    Then response code should be 200
    And response header Content-Type should exist
    And response body should be valid json
    And response body path $.id should exists
    And response body path $.tags[0].id should exists
    And response body path $.tags[0].name should exists
    And response body path status should be available
