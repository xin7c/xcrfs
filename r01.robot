*** Settings ***

Documentation   A test suite containing tests related to invalid login. These
...             tests are data-driven by they nature. They use a single
...             keyword, specified with Test Template setting, that is called
...             with different arguments to cover different scenarios.
Library        RequestsLibrary


*** Test Cases ***
Acfun homepage...

    Create Session    acfun    http://www.acfun.cn
    ${resp}=    Get Request    acfun    /
    Should Be Equal As Strings	${resp.status_code}	200
    Log    ${resp.content}
    Log    “acfun首页”
    Sleep    1

Acfun login...

      Create Session    acfun    http://www.acfun.cn
      ${resp}=    Get Request    acfun    /login/
      Should Be Equal As Strings	${resp.status_code}	200
      Log    ${resp.content}
      Log    “acfun登陆”
