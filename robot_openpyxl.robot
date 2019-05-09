*** Settings ***
Library           String
Library           openpyxl
Library           BuiltIn

*** Variables ***
${excel}   Excel_openpyxl.xlsx

*** Test Cases ***
Test Load Data Excel
    ${wb}      Load Workbook           ${CURDIR}/${excel}
    ${ws}    Set Variable    ${wb.get_sheet_by_name('Sheet2')}
    ${cell}    Set Variable    ${ws.cell(2,2).value}
    ${body}    Fetch From Right    ${cell}    {}
    Log To Console  \n\n${body}\n