*** Settings ***
Library    SeleniumLibrary
Test Teardown    ปิดบราวเซอร์
Resource    /Users/shanyarnuchponsa/Playground/source-code-management-project/tests/atdd/ui/resources/signin_test_university_resource.robot


*** Test Cases ***
Sign in ด้วยอีเมล์ที่เคยสมัครใช้งานด้วย Google แล้ว ทำรายการไม่สำเร็จ แสดงข้อความแจ้ง "You already have an account"
    เปิดเว็บบราวเซอร์ Chrome และไปที่เว็บไซต์ Test University
    กดลิงค์ Sign In
    เลือกปุ่ม Sign in with email
    กรอกอีเมลที่เคยสมัครใช้งานแล้ว     shanyarnuch@gmail.com
    กดปุ่ม Next
    ตรวจสอบข้อความแจ้งเตือน      You already have an account     shanyarnuch@gmail.com
