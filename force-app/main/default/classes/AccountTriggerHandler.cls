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
    
      /**
      * @Name          beforeInsert
      * @Description   Before Insert for the trigger
      * @Author        Luis Oviedo
      */
    
    public void beforeInsert(List<Account> lstAccount) {
        for(Account a : lstAccount) {          
            a.Name = a.Name + '_Test';       
        } 
    }
}