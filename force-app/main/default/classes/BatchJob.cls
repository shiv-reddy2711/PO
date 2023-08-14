global class BatchJob implements Database.Batchable<sObject>
{
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'SELECT Id,Name FROM Account';
        
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext BC, List<Account> scope)
    { 
       /* list<contact>conList=[select id,Languages__c,name from contact where accountId=:scope[0].Id];
        for(){
            
        }*/
        
        List<Contact> cUpdate = new List<Contact>();
        for(Account a : scope)
        {
            for(Contact c:a.contacts){
                c.Languages__c = a.Name;
                cUpdate.add(c);
            }
        }
        update cUpdate;
    }
        
        
        
        
        global void finish(Database.BatchableContext BC) {
        }
    }