*** Settings ***
Library    SeleniumLibrary
Variables    ../Locators/Locators.py

*** Keywords ***

desk sayfasinda olduğunu onayla
    Click Link    ${DeskLocator}
    ${actualURL}    Get Location
    Should Contain    ${actualURL}    desk


Fiyat araligi belirle
    Click Element    ${priceSekmesi}
    Input Text    ${maxFiyatInput}    400


Urunlerin fiyatlarini konsola yaz
    # Liste elemanlarini $ ile veya @ ile tanimlayabilirim
    @{urunListesi}    Get WebElements    ${urunFiyatlariLocator}
    
    # Liste elemanlarini dongulerde mutlaka @ ile cagirmaliyim
    FOR  ${urun}  IN  @{urunListesi}
        ${urunText}    Get Text    ${urun}
        Log To Console    ${urunText}
    END    
    
        
    



