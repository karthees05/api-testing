package com.api.automation.runner;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty:target/cucumber-pretty.txt",
                "html:target/cucumber-html-report",
                "json:target/cucumber.json",
                "junit:target/cucumber-result.xml",
                "usage:usage/cucumber-usage.json"},
        features = "src/test/resources/features",
        glue = {"com.api.automation.stepdefinitions"},
        tags = {"@fakeapi_scenario1"})
/*@CucumberOptions(
        plugin = {"pretty",
                "html:target/cucumber-html-report"},
        features = "src/test/resources/features",
        glue = {"com.api.automation.stepdefinitions"})*/
public class RunCuke {
}
