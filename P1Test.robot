*** Settings ***
Documentation     A test suite with a test for P1Mon.
...
...               Tests all navigation screens
...               And tests the setup screen

Library  SeleniumLibrary
Library  OperatingSystem
Library  Collections

Resource  P1resources.robot


Suite Setup  Run Keywords  Configure Selenium   Navigate To Homepage
Suite Teardown  Exit Selenium

*** Test Cases ***
Menukeuzes
    Test information screens
Setup screens
    Test Setup screens

    [Teardown]    Close Browser
