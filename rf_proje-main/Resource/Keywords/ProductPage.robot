* Settings *
Library    SeleniumLibrary
Variables    ../Locators/Locators.py

* Keywords *
Urunun basliginin input ie ayni oldugunu teyit et
    [Arguments]    ${input}
    ${urunBasligiText}    Get Text    ${urunBasligi}
    Should Contain    ${urunBasligiText}    ${input}
    