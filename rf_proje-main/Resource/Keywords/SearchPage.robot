*** Settings ***
Library    SeleniumLibrary
Library    String
Variables    ../Locators/Locators.py
*** Keywords ***
Sonuclarin basariyla gorundugunu kontrol et
    ${resultText}    Get Text    ${searchResult}
    # Should Contain    ${resultText}    room
    ${strArray}    Split String    ${resultText}
    Log To Console    ${strArray}[0]
    Should Be True    ${strArray}[0]>0
   


Urun fiyatlarini kucukten buyuge diz
    Select From List By Value    ${fiyatDropbox}    price-ascending
    Sleep    3s

Urunlerin fiyatlarini konsola yazdir
    ${urunListesi}    Get WebElements    ${urunFiyatlariLocator}
    FOR  ${urun}  IN  @{urunListesi}
        ${urunText}    Get Text    ${urun}
        Log To Console    ${urunText}
    
    END

    ${liste}    Get WebElements    ${listeLocator}    
    Click Link    ${liste}[0]

verify that the result is none
    ${resultText}    Get Text    ${searchResult}
    Should Contain     ${resultText}      No results
        


        
           

