#Author : nagamani.zzz@gmail.com

@FeatureTest
Feature: Add to cart
  This feature will test functionality of adding products to the user cart from different flow

  Background: User is Logged in

  @AddToCart
  Scenario: Search a product and add the first result/product to the user basket
    Given User serach for a Product "lenovo Laptop"
    When Add the first laptop that appears in the search results to the cart
    And User clicks on "cart" link
    Then user basket should display added 1 items
