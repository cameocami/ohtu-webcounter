*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Set Counter To Zero

*** Test Cases ***
When button pressed three times and reset the counter is zero
    Go To  ${HOME_URL}
    Click Button  Paina
    Click Button  Paina
    Click Button  Paina
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa