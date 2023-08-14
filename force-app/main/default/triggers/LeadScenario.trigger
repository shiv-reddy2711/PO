trigger LeadScenario on Lead (before insert,before update,after update) 
{ 
for(lead ld : trigger.new)
{
 if(ld.leadsource == 'Web')
 { 
 ld.AnnualRevenue = 23.2;
 } 
 else{ 
 
 ld.Rating = 'Hot'; 
 }
}
}