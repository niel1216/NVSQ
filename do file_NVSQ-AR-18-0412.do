**Values for categorical variables
/*
website_yes: an organization has website (1) or not (0)
annual_report_online: an organization has disclosed its annual report on online (1) or not (0)
response_code_01: Respond (1) or not (0); missing (99)
group: Control (0); T1 (1); T2 (2); T3 (3); T4 (4)
nature: Public (1) or private (0)
region: National (1) or regional (0)
response_satisfatory: Satisfactory response (1) or not (0); missing (99)
response_code_123: Direct (1); Further (2); Irrelevant (3); no response (0); missing (99)
*/

**Table 1
oneway ln_size group, tabulate
oneway ln_age group, tabulate
oneway nature group, tabulate
tab nature group
oneway region group, tabulate
tab region group
tab response_code_01 group

**Table 2
tab response_code_01 if group==0
tab response_code_01 if group==1
tab response_code_01 if group==2
tab response_code_01 if group==3
tab response_code_01 if group==4
tab response_code_01 if nature==1
tab response_code_01 if nature==0

**Table 4
tab response_code_123 if group==0
tab response_code_123 if group==1
tab response_code_123 if group==2
tab response_code_123 if group==3
tab response_code_123 if group==4
tab response_code_123 if nature==1
tab response_code_123 if nature==0

**Model I
logit response_code_01 i.group if response_code_01<10

**Model II
logit response_code_01 i.group ln_size ln_age nature region website_yes annual_report_online i.Province if response_code_01<10

**Model III
logit response_satisfatory i.group if response_code_01<10 

**Model IV 
logit response_satisfatory i.group ln_size ln_age nature region website_yes annual_report_online i.Province if response_code_01<10
