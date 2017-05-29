@sgleads
Feature: Leads segmentation
  As a rdstation user
  I want to create a segmentation leads
  To get the interesting leads to be contacted by marketing team

  Background: Access leads segmentation
    Given I load the "https://staging.rdstation.com.br/nova-segmentacao" page
    When I login in with valid user
    Then I should see the "Segmentação de Leads" page

  @sgpreview
  Scenario: Preview the search segmentation
    Given I am on "Nova lista de segmentação" page
    When I enter with "Oportunidades Comerciais"
      And I fill the segmentation by "Gerente"
      And I select preview segmentation
    Then I should see a preview segmentation list

  @sgcreate
  Scenario: Create a segmentation lead
    Given I am on "Nova lista de segmentação" page
    When I enter with "Oportunidades Comerciais"
      And I fill the segmentation by "Gerente"
      And I save the segmentation leads
      And I search for "Oportunidades Comerciais" segmentation
    Then I should see the "Oportunidades Comerciais" on the segmentation list
