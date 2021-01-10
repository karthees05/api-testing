#@fakeapi_feature
#Feature: Validate the fake APIs
#
#  Background:
#    Given baseUri is http://fakerestapi.azurewebsites.net
#
#  @fakeapi_scenario1
#  Scenario: Validate GET Activities
#    When I GET /api/Activities
#    Then response code should be 200
#    And response header Content-Type should exist
#    And response header Pragma should exist
#    And response body should contain Activity 1
#
#
