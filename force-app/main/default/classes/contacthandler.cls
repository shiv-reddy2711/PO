public class contacthandler {
    public static void updateLit(List<Contact> lstCon) {
        Set<Id> actId = new Set<Id>();
        for (Contact con : lstCon) {
            actId.add(con.AccountId);
        }
        
        List<Account> lstAct = [
            SELECT Id, Name, (SELECT Id, Name FROM Contacts) FROM Account 
            WHERE Id IN :actId
        ];
        
        List<Contact> conList = [
            SELECT Id, Name, AccountId, Sum_1__c
            FROM Contact
            WHERE AccountId IN :lstAct
        ];
        
        List<Account> actList = new List<Account>();
        
        for (Contact con : conList) {
            Account act = new Account();
            act.Id = con.AccountId;
            act.NumberofLocations__c += con.Sum_1__c;
            system.debug('__________'+act.NumberofLocations__c);
            actList.add(act);
        }
        
        update actList;
    }
}