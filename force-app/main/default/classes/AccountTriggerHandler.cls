/**************************************************************************************
Apex Class Name:  AccountTriggerHandler
Version     : 1.0 
Created Date : 08-18-2021
Function    : TriggerHandler for AccountTrigger
Modification Log :
* Developer                   Date          Version         Description
* ----------------------------------------------------------------------------                 
* Luis Oviedo                          1.0          Original Version
*************************************************************************************/
public class AccountTriggerHandler {
    public void BeforeInsert(List<Account> lstAccount) {
        List<Account> lstAccInsert = new List<Account>();
        for(Account a : lstAccount) {
            a.Name = a.Name + '_Test';
            lstAccInsert.add(a);
        } 
        INSERT lstAccInsert; 
    }
}