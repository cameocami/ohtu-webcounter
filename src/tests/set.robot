*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Set Counter To Zero

*** Test Cases ***
When button pressed four times and set to 3, the counter is 3
    Go To  ${HOME_URL}
    Click Button  Paina
    Click Button  Paina
    Click Button  Paina
    Click Button  Paina
    Input Text   counter-value  3
    Click Button  Aseta
    Page Should Contain  nappia painettu 3 kertaa

When button pressed 1 time and set to 10, the counter is 10
    Go To  ${HOME_URL}
    Click Button  Paina
    Input Text   counter-value  10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa
