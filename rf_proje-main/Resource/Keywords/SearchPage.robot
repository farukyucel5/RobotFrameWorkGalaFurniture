*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/Locators.py
*** Keywords ***
Sonuclarin basariyla gorundugunu kontrol et
    ${resultText}    Get Text    ${searchResult}
    Should Contain    ${resultText}    room

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


        
           

