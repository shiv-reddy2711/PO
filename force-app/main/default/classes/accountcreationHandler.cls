public class accountcreationHandler {
    /*  public static void myacts(List<account> actlst){

list<account> actlis=new list<account>();
for(account act: actlst){
if(act.SicDesc!=NULL)
act.SLASerialNumber__c	= act.SicDesc;
actlis.add(act);
}
}*/
    
    /* public static void trgMethod(List<Account> accList,Map<Id,Account> oldMap)
{
Set<Id> accIds = new Set<Id>();

if(!accList.isEmpty())
{
for(Account ac : accList)
{
if(ac.CheckBox__c == true && oldMap.containsKey(ac.Id) && oldMap.get(ac.Id).CheckBox__c	 == false)
{
accIds.add(ac.Id);
}
}
}

if(!accIds.isEmpty())
{
List<Opportunity> oppList = [Select Id,AccountId,Stagename from Opportunity where AccountId IN : accIds
and Stagename != 'Closed Won' and Probability >= 70];

List<Opportunity> listToUpdate = new List<Opportunity>();

if(!oppList.isEmpty())
{
for(Opportunity opp : oppList)
{
opp.Stagename = 'Closed Won';
opp.CloseDate = date.today();
listToUpdate.add(opp);
}
}

if(!listToUpdate.isEmpty())
{
update listToUpdate;
}
}
}
   public static void updateOwner(List<Account> actlst){
    Set<Id> ownerIdSet = new Set<Id>();
    for (Account acct : actlst) {
        ownerIdSet.add(acct.OwnerId);
    }
    List<User> userList = [SELECT Id, Name FROM User WHERE Id IN :ownerIdSet];
    for (Account acct : actlst) {
        for (User usr : userList){
            if (usr.Id == acct.OwnerId){
                acct.POPUPOWNER__c = usr.Name;
                break;
            }
        }
    }
}*/
   public static void exampleAccount (Map<Id, Account> accountListNew, Map<Id, Account> accountListOld) {
        for (Account myAccount : accountListNew.values()){
            system.debug('++++++++'+myAccount);
            if (accountListNew.get(myAccount.Id).Name != accountListOld.get(myAccount.Id).Name) {
            }
        }
    }
}