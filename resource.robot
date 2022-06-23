*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         localhost:8780/WebGoat
${BROWSER}        Chrome
${DELAY}          2
${VALID USER}     webgoat
${VALID PASSWORD}    webgoat
${LOGIN URL}      http://${SERVER}/login
${WELCOME URL}    http://${SERVER}/start.mvc#lesson/WebGoatIntroduction.lesson
${ERROR URL}      http://${SERVER}/login?error

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Complete Steps To Signup Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open
    Click Link    //a[@href="/WebGoat/registration"]
    Input Text    //input[@name="username"]    ${VALID USER}
    Input Text    //input[@name="password"]    ${VALID PASSWORD}
    Input Text    //input[@name="matchingPassword"]    ${VALID PASSWORD}
    Click Element    //input[@name="agree"]
    Click Element    //button[@class="btn btn-primary"]
    [Teardown]    Close Browser

Login Page Should Be Open
    Title Should Be    Login Page

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    exampleInputEmail1    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    exampleInputPassword1    ${password}

Submit Credentials
    Click Button    //button[@class="btn btn-primary btn-block"]

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    WebGoat

Complete Flow on WebGoat
    Click Element    xpath=(//span)[14]
    Click Element    //a[@id="A1Injection-SQLInjectionintro"]
    Click Element    //a[@id="A1Injection-SQLInjectionadvanced"]
    Click Element    //a[@id="A1Injection-SQLInjectionmitigation"]
    Click Element    //a[@id="A1Injection-Pathtraversal"]
    Click Element    //a[@id="A1Injection-SQLInjectionintro"]
    Click Element    xpath=(//div[@class="attack-link solved-false "])[5]
    Click Element    //input[@name="Get Account Info"]
    Click Element    //div[@class="attack-link solved-false "]
    Click Element    xpath=(//button)[9]
    Click Element    //div[@class="attack-link solved-false "]
    Click Element    xpath=(//button)[10]
    Click Element    xpath=(//div[@class="attack-link solved-false "])[2]
    Click Element    xpath=(//button)[11]
    Click Element    xpath=(//div[@class="attack-link solved-false "])[3]
    Click Element    xpath=(//button)[12]
    Click Element    //div[@class="attack-link solved-true "]
    Click Element    //input[@name="Get Account Info"]
    Click Element    xpath=(//div[@class="page-link "])[2]
    Click Element    xpath=(//div[@class="page-link "])[2]
    Click Element    xpath=(//div[@class="page-link "])[3]
    Click Element    xpath=(//div[@class="attack-link solved-false "])[5]
    Click Element    xpath=(//input[@name="Get Account Info"])[2]
    Click Element    xpath=(//div[@class="attack-link solved-false "])[5]
    Click Element    xpath=(//button)[13]
    Click Element    xpath=(//div[@class="attack-link solved-false "])[6]
    Click Element    xpath=(//button)[14]
    Click Element    xpath=(//div[@class="attack-link solved-false "])[7]
    Click Element    xpath=(//button)[15]
    Click Element    //[@id="A1Injection-SQLInjectionadvanced"]
    Click Element    //div[@class="page-link "]
    Click Element    //div[@class="attack-link solved-false "]
    Click Element    //input[@name="Get Account Info"]
    Click Element    //input[@name="Check Dave's Password:"]
    Click Element    //div[@class="attack-link solved-false "]
    Click Element    //input[@name="login-submit"]
    Click Element    xpath=(//div[@class="attack-link solved-false "])[2]
    Click Element    //a[@id="A1Injection-SQLInjectionmitigation"]
    Click Element    //div[@class="page-link "]
    Click Element    xpath=(//div[@class="page-link "])[2]
    Click Element    xpath=(//div[@class="page-link "])[3]
    Click Element    //div[@class="attack-link solved-false "]
    Click Element    //button[@class="btn btn-primary"]
    Click Element    //div[@class="attack-link solved-false "]
    Click Element    xpath=(//button[@class="btn btn-primary"])[2]
    Click Element    //a[@href="http://localhost:8780/WebGoat/start.mvc#lesson/SqlInjectionMitigations.lesson/8"]
    Click Element    //input[@name="Get Account Info"]
    Click Element    xpath=(//div[@class="attack-link solved-false "])[3]
    Click Element    xpath=(//input[@name="Get Account Info"])[2]
    Click Element    xpath=(//div[@class="attack-link solved-false "])[4]
    Click Element    xpath=(//button[@class="btn btn-primary"])[3]
    Click Element    xpath=(//div[@class="page-link "])[8]
    Click Element    //a[@id="A1Injection-SQLInjectionmitigation"]
    Click Element    //div[@class="attack-link solved-false "]
    Click Element    //button[@class="btn btn-primary"]
    Click Element    //button[@class="btn btn-primary"]
    Click Element    //button[@id="user-menu"]
    Click Link    //a[@href="/WebGoat/logout"]
    [Teardown]    Close Browser