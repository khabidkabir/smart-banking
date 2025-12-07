package com.test.run;

import org.testng.annotations.DataProvider;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
        features = "./src/main/resources/login.feature", // Path to your feature files
        glue = "com.cucumber.bdd.login", // Package where your step definitions are located
        plugin = {"json:target/cucumber.json"},
        monochrome = true
    )
    public class Runner extends AbstractTestNGCucumberTests {

        @Override
        @DataProvider(parallel = true) // Set to true for parallel execution of scenarios
        public Object[][] scenarios() {
            return super.scenarios();
        }
    }