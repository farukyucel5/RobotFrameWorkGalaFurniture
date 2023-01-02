*** Settings ***
Documentation    GALA FURNITURE projesi
Library    SeleniumLibrary

Resource    ../Resource/Keywords/HomePage.robot
Resource    ../Resource/Keywords/RegisterPage.robot
Resource    ../Resource/Keywords/LoginPage.robot

Variables    ../Resource/TestData/TestData.py

Resource    ../Resource/Keywords/SearchPage.robot
Resource    ../Resource/Keywords/ProductPage.robot

Resource    ../Resource/Keywords/CategoryPage.robot



Test Setup    Open Browser    ${URL}    ${BROWSER}
Test Teardown    Close Browser

*** Test Cases ***
Yeni bir hesap olustur
    Create linkine tikla
    Uyelik formunu doldur
    Logout butonu gorunmeli

Login testi
    [Documentation]    Aktif bir mail adresi ve sifresi ile giris yap
    Login linkine tikla
    Mail ve sifreyi gir    ${emailStr}    ${passwordStr}
    Sigin butonuna tikla
    Logout butonu gorunmeli

Negatif login testi
    [Documentation]    Varolmayan bir mail adresi veya hatali bir sifre ile giris yap
    Login linkine tikla
    Mail ve sifreyi gir    asdasd@asasd.com    123456
    Sigin butonuna tikla
    Girisin basarisiz oldugunu dogrula


Positive searching product
     Click search button    
     Sleep    3s
     Search for product    room
     Sonuclarin basariyla gorundugunu kontrol et
     Urun fiyatlarini kucukten buyuge diz
     Urunlerin fiyatlarini konsola yazdir
     Urunun basliginin input ie ayni oldugunu teyit et    Domina Jar

Negatif urun aramasi
    Click search button    
    Sleep    3s
    Search for product    yusuf
    verify that the result is none

make list of desks whose price is less than 400$
    Click Desk inside the home office
    desk sayfasinda olduğunu onayla
    Fiyat araligi belirle
    Urunlerin fiyatlarini konsola yaz


    
         
     

     

         

    