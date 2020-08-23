*** Variables ***
${Browser}        Chrome
${SiteUrl}       http://p1mon
${Delay}          5s

*** Keywords ***
Configure Selenium
     Set Selenium Speed    .50 Seconds

Navigate To Homepage
    Open Browser    ${SiteUrl}    ${BROWSER}
    Maximize Browser Window

Exit Selenium
    Capture Page Screenshot
    Close Browser

Generate Random Number
    ${random_number}    Evaluate    random.randint(1000000, 9999999)   random
    [return]    ${random_number}

Test information screens
    Click Link   id:menu1
    Click Link   id:menu3
    Click Link   id:menu4
    Click Link   id:menu5
    Click Link   id:menu6
    Click Link      id:menu8
    Click Link      id:menu10

Test Setup screens
    Click Link      id:menu2
    input Password  loginpasswd  Qazedol01
    Click Element   name:check_password_button
    Click Link      home.php
