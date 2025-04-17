*** Settings ***

Library  SeleniumLibrary



*** Variables ***



*** Test Cases ***
Create account
        log to console      Vivek

        create webdriver    Chrome
        open browser        https://www.amazon.in/ap/register?showRememberMe=true&openid.pape.max_auth_age=0&openid.return_to=https%3A%2F%2Fwww.amazon.in%2F%3Fref_%3Dnav_ya_signin&prevRID=0CJXDBF1HM3ASEJTXK5W&openid.identity=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&openid.assoc_handle=inflex&openid.mode=checkid_setup&prepopulatedLoginId=&failedSignInCount=0&openid.claimed_id=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0%2Fidentifier_select&pageId=inflex&openid.ns=http%3A%2F%2Fspecs.openid.net%2Fauth%2F2.0   chrome
        log to console      verma
        sleep       5
        input text      id:ap_customer_name     vivek verma
        input text      id:ap_phone_number      7860752096
        input password      id:ap_password             Vivek
        ${"password"}         set variable          id:ap_password

        element should be       ${"password"}
        click button       xpath:/html/body/div[1]/div[1]/div[2]/div/div[2]/div/form/div/div/div[7]/span/span/input
        log to console      status
        sleep       5
             # Simulate a command that might fail
    ${status}    ${message}=    Run Keyword And Ignore Error    Some Failing Keyword
    Log    Command executed with status: ${status}    INFO
    Log    Error message: ${message}    INFO


        close browser




*** Keywords ***
