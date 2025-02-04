*** Settings ***
Library        vnf_etsi.py

*** Test Cases ***
Testing if the validation output is OK
    
    ${vnf_val}=    vnf_etsi
    # ${in} =    ${VALID_PHRASE} in ${vnf_val}
    # IF Should Contain ${vnf_val} %{VNF_VALID}
    # ${type string1}=    Evaluate  type('%{VNF_VALID}')
    # ${type string2}=    Evaluate  type('${vnf_val}')
    # ${type var}=    Evaluate  type('OK')
    # Log To Console     ${type string1}
    # Log To Console     ${type string2}
    # Log To Console     ${type var}
    # Log    ${vnf_val}  console=yes
    # Log    %{VNF_VALID}  console=yes
    #Should be equal as strings  '${vnf_val}'  '${vnf_val}'  strip_spaces=yes  formatter=ascii
    Should be equal as strings  ${vnf_val}  %{VNF_VALID}
    #ELSE
    # FAIL    \nVNF/KNF Definition is Invalid
    #END