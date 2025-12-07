@Smoke @Functional @Regression
Feature: Login function test 
Description: login should pass with valid credentials 
Background:
Given Open any browser
And Go to application with link


@Positive @SB-10
Scenario: Login should pass with valid User name and pass

When put valid user
And put valid password
And click login button
Then login should pass and logout button should there

@Negative @SB-11
Scenario: Login should fail with invalid or wrong credentials

When put invalid user
And put invalid password
And click login button
Then login should failed and no logout button there

@Negative @SB-12
Scenario: Login should fail with invalid user or valid pass

When put invalid user
And put valid password
And click login button
Then login should failed and no logout button there

@Negative @SB-13
Scenario: Login should fail with valid user or invalid pass

When put valid user
And put invalid password
And click login button
Then login should failed and no logout button there

@Negative @SB-14
Scenario: Login should fail with both user or  pass null

When put null user
And put null password
And click login button
Then login should failed and no logout button there

@Negative @SB-15
Scenario: Login should fail with null user or  pass valid

When put null user
And put valid password
And click login button
Then login should failed and no logout button there

@Negative @SB-16
Scenario: Login should fail with valid user or  pass null

When put valid user
And put null password
And click login button
Then login should failed and no logout button there