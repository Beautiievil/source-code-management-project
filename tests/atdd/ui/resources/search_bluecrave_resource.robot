*** Variables ***
${URL}    http://www.google.co.th

*** Keywords ***
เปิด Chrome และไปที่ Google
    Open Browser    ${URL}    headlesschrome

ค้นหาคำว่า "ถ้ำสีฟ้า"
    Input Text    q    ถ้ำสีฟ้า

คลิ๊กปุ่ม search
    Press keys    q    RETURN

จะเจอคำว่า "มหัศจรรย์สีสันธรรมชาติแห่งแม่สอด"
    Page Should Contain    มหัศจรรย์สีสันธรรมชาติแห่งแม่สอด

คลิ๊ก link 
    Click Link    //div[@class="r"]//a
    sleep    1
    Wait Until Page Contains Element    //*[@id="m-content"]/section[2]/div/div/div[1]/div/div/div[2]/article[2]/div[1]/div[1]/div/div[1]/div/figure/div/div/img
    

ดูหน้ารายละเอียด
    [Arguments]    ${postedDate}    ${postedBy}
    Wait Until Page Contains    ${postedDate}
    Wait Until Page Contains    ${postedBy}

ปิดบราวเซอร์
    Close Browser

    