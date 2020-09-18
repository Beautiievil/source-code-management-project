*** Variables ***
${URL}    https://testautomationu.applitools.com/

*** Keywords ***
เปิดเว็บบราวเซอร์ Chrome และไปที่เว็บไซต์ Test University
    Open Browser    ${URL}    headlesschrome

กดลิงค์ Sign In
    sleep    0.5
    Click Link    //*[@id="app"]/div[1]/header/div[2]/div/div[1]/div/a[1]

เลือกปุ่ม Sign in with email
    sleep    0.5
    Wait Until Page Contains Element    //*[@id="firebaseui-auth-container"]/div/div[1]/form/ul/li[2]/button
    Click Element    //*[@id="firebaseui-auth-container"]/div/div[1]/form/ul/li[2]/button

กรอกอีเมลที่เคยสมัครใช้งานแล้ว
    [Arguments]    ${email}
    Set Focus To Element    //*[@id="firebaseui-auth-container"]/div/form/div[2]/div/div[1]/input
    Input Text       //*[@id="firebaseui-auth-container"]/div/form/div[2]/div/div[1]/input    ${email}
    sleep     1

กดปุ่ม Next
    Click Element    //*[@id="firebaseui-auth-container"]/div/form/div[3]/div/button[2]
    sleep     1

ตรวจสอบข้อความแจ้งเตือน
    [Arguments]    ${message}    ${reponseEmail}
    Wait Until Page Contains    ${message}
    Element Text Should Be    //*[@id="firebaseui-auth-container"]/div/form/div[2]/p/strong    ${reponseEmail}
    sleep     1
    
ปิดบราวเซอร์
    Close Browser