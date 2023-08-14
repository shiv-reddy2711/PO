public class LeadInsertHandler {
    public static void inLead(list<contact> conList){
        
       set<Id> idset=new set<id>();
        for(contact cons: conList){
            idset.add(cons.accountid);
            
        }
        system.debug('++++'+idset);
        list<account> lstact=[select id,name,(select id,name from contacts) from account where Id in:idset];
                system.debug('++shiv++'+lstact);
        Map<Id,Integer> cout=new Map<Id,Integer>();
        
        for(account a: lstact){
            Integer it=a.contacts.size();
            cout.put(a.id, it);
        }
            for(Contact cot: conList){
                Integer ist=cout.get(cot.AccountId);
                system.debug('---fia---'+ist);
                if(ist >=2){
                    cot.addError('get error');
                }
            }
    }
}