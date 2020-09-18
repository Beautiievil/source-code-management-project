*** Settings ***
Library    SeleniumLibrary
Test Teardown    ปิดบราวเซอร์
Resource    /Users/shanyarnuchponsa/Playground/source-code-management-project/tests/atdd/ui/resources/search_bluecrave_resource.robot

*** Test Cases ***
ค้นหาคำว่า "ถ้ำสีฟ้า" บน Google จะเจอคำว่า "มหัศจรรย์สีสันธรรมชาติแห่งแม่สอด" และเปิดเว็บไซต์สำเร็จ
    เปิด Chrome และไปที่ Google  
    ค้นหาคำว่า "ถ้ำสีฟ้า"
    คลิ๊กปุ่ม search
    จะเจอคำว่า "มหัศจรรย์สีสันธรรมชาติแห่งแม่สอด"
    คลิ๊ก link 
    ดูหน้ารายละเอียด     13 ส.ค. 2563 15:51     โดย: ผู้จัดการออนไลน์
