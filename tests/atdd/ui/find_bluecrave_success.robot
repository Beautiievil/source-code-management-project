*** Settings ***
Library    SeleniumLibrary
Test Teardown    ปิดบราวเซอร์

*** Variables ***
${URL}    http://www.google.co.th

*** Test Cases ***
ค้นหาคำว่า "ถ้ำสีฟ้า" บน Google จะเจอคำว่า "มหัศจรรย์สีสันธรรมชาติแห่งแม่สอด" และเปิดเว็บไซต์สำเร็จ
    เปิด Chrome และไปที่ Google  
    ค้นหาคำว่า "ถ้ำสีฟ้า"
    คลิ๊กปุ่ม search
    จะเจอคำว่า "มหัศจรรย์สีสันธรรมชาติแห่งแม่สอด"
    คลิ๊ก link 
    ดูหน้ารายละเอียด     13 ส.ค. 2563 15:51     โดย: ผู้จัดการออนไลน์
    ปิดบราวเซอร์

*** Keywords ***
เปิด Chrome และไปที่ Google
    Open Browser    ${URL}    chrome

ค้นหาคำว่า "ถ้ำสีฟ้า"
    Input Text    q    ถ้ำสีฟ้า

คลิ๊กปุ่ม search
    Press keys    q    RETURN

จะเจอคำว่า "มหัศจรรย์สีสันธรรมชาติแห่งแม่สอด"
    Page Should Contain    มหัศจรรย์สีสันธรรมชาติแห่งแม่สอด

คลิ๊ก link 
    Click Link    //div[@class="r"]//a

ดูหน้ารายละเอียด
    [Arguments]    ${postedDate}    ${postedBy}
    Wait Until Page Contains    ${postedDate}
    Wait Until Page Contains    ${postedBy}

ปิดบราวเซอร์
    Close Browser

    