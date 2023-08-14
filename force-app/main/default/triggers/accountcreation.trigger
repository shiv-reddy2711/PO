trigger accountcreation on Account (before insert,after Update) {
      //  accountcreationHandler.updateowner(trigger.new);
      accountcreationHandler.exampleAccountMethod(Trigger.oldMap, Trigger.newMap);
}


   // if(trigger.isbefore &&(trigger.isinsert || trigger.isupdate)){
/*accountcreationHandler.myacts(trigger.new);
}

if(trigger.isAfter && trigger.isUpdate)
{
accountcreationHandler.trgMethod(trigger.new,trigger.oldMap);
}
}

trigger duplicateTrigger on Account (before Insert, before Update) {
    Set<String> accNames = new Set<String>();
    
    if (trigger.isBefore && (trigger.isInsert || trigger.isUpdate)) {
        if (!trigger.new.isEmpty()) {
            for (Account acc : trigger.new) {
                accNames.add(acc.Name);
            }
        }
    }
    
    List<Account> accList = [SELECT Id, Name FROM Account WHERE Name IN :accNames];
    
    Map<String, Account> existingAccMap = new Map<String, Account>();
    
    if (!accList.isEmpty()) {
        for (Account accObj : accList) {
            existingAccMap.put(accObj.Name, accObj);
        }
    }
    
    if (!trigger.new.isEmpty()) {
        for (Account existingAcc : trigger.new) {
            if (existingAccMap.containsKey(existingAcc.Name)) {
                existingAcc.addError('Account name already exists');
            }
        }
    }*/