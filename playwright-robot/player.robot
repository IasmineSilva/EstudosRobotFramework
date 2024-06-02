*** Settings ***
Library   Browser

*** Test Cases ***
Deve tocar uma música
    New Browser    browser=chromium    headless=False
    New Page    https://parodify.vercel.app/
    Get Text    css=.logged-user    contains    Fernando Papito

    ${play}    Set Variable    
    ...    xpath=(//button[contains(@class,'play w-10 h-10 rounded-full bg-primary absolute bottom-2 right-2 items-center justify-center flex')])[1]
    Click    ${play}
    ${pause}    Set Variable
    ...    xpath=(//button[contains(@class,'play w-10 h-10 rounded-full bg-primary absolute bottom-2 right-2 items-center justify-center flex')])[1]
   Wait For Elements State    ${pause}    visible    2
   Wait For Elements State    ${play}    visible    175

    Sleep    5