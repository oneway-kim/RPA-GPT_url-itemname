*** Settings ***
Library     RPA.Browser.Selenium


*** Tasks ***
Naver_temperature
    Naver_start
    #    Key_input
    Get_temperature
    Naver_close

Daum_temperature


*** Keywords ***
Naver_start
    Open Available Browser
    ...    https://search.naver.com/search.naver?where=nexearch&sm=top_hty&fbm=0&ie=utf8&query=%ED%98%84%EC%9E%AC+%EA%B8%B0%EC%98%A8
    ...    headless=${FALSE}
    Sleep    5s

Key_input
    Input Text    //*[@id="query"]    현재기온
    Sleep    3s
    Press Keys    //*[@id="query"]    RETURN
    Sleep    3s

Get_temperature
    ${text}=    Get Text
    ...    //*[@id="main_pack"]/section[1]/div[1]/div[2]/div[1]/div[1]/div/div[2]/div/div[1]/div[1]/div[2]/strong
    Sleep    3s

Naver_close
    Close Browser

Daum_start
    Open Available Browser    https://www.daum.net/    headless=${FALSE}
    Sleep    5s

Daum_close
    Close Browser
