*** Settings ***
Library  OperatingSystem
Library  String
Library  DateTime
Library  Selenium2Library
*** Variables ***
${V1}  elem0
@{V2}  elem1  elem2
*** Test Cases ***
Test Case One
	Create Webdriver  Firefox
    Go To Page
    Maximize Browser Window
*** Keywords ***
Go To Page
	FOR  ${e}  IN  @{V2}
		Log To Console  \n list item: ${e}
	END
	Log To Console  \n scalar: ${V1}
    Go To  https://www.jobs.bg/