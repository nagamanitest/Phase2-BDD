package com.simplilearn.bdd_test.stepdefenitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class LoginSteps {
	
	@Given("user should on the login page")
	public void user_should_on_the_login_page() {
	    System.out.println("This step: User should be on login page");
	}

	@Given("user enters email address")
	public void user_enters_email_address() {
	    System.out.println("This step:User enters email address");
	}

	@Given("user clicks Login in button")
	public void user_clicks_login_in_button1() {
	   System.out.println("This step:user should click on login button");
	}

	@Then("user should navigate to My account")
	public void user_should_navigate_to_my_account() {
		System.out.println("This step:User should navigate to My Account");
	}
	

	@Given("I want to enter valid credentials")
	public void i_want_to_enter_valid_credentials() {
	    System.out.println("This step:user want to enter valid credentials");
	}

	@When("I check for email and password fields")
	public void i_check_for_and_fields(String email, String password) {
	    System.out.println("This step: User check for email and password");
	
	}

	@When("user enters following details")
	public void user_enters_following_details(io.cucumber.datatable.DataTable dataTable) {
		System.out.println("This step:user enters following details");

	}

	@Given("user enters password")
	public void user_enters_password() {
		System.out.println("This step:User enters password");
	}

	@Then("error message dispalyed with wrong credentials")
	public void error_message_dispalyed_with_wrong_credentials() {
		System.out.println("This step:Error message displayed with wrong credentials");
	}

	@Then("user returns back on the login page")
	public void user_returns_back_on_the_login_page() {
		System.out.println("This step:User returns back on the login page");
	}
}
