public class UpdateParentOnChildUpdateHandler {
    public static void updateParentFields(List<Contact> contacts) {
        Map<Id, Decimal> parentSumMap = new Map<Id, Decimal>();
        
        for (contact child : contacts) {
            if (child.accountid != null) {
                Decimal sum = parentSumMap.get(child.accountid);
                sum = sum != null ? sum + child.sum__c : child.sum__c;
                parentSumMap.put(child.accountid, sum);
            }
        }
        
        
        if (!parentSumMap.isEmpty()) {
            List<account> parents = [SELECT Id, parentfield__c, parentfield1__c FROM account WHERE Id IN :parentSumMap.keySet()];
            for (account parent : parents) {
                parent.parentfield__c += parentSumMap.get(parent.Id);
            }
            
            update parents;
        }
    }
}