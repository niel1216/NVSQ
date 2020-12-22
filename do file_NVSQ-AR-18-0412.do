**Model I
logit response_code_01 i.group if response_code_01<10

**Model II
logit response_code_01 i.group ln_size ln_age nature region website_yes annual_report_web_yes i.Province if response_code_01<10

**Model III
logit response_satisfatory i.group if response_code_01<10 

**Model IV 
logit response_satisfatory i.group ln_size ln_age nature region website_yes annual_report_web_yes i.Province if response_code_01<10
