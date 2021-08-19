/**************************************************************************************
Apex Class Name:  AccountTrigger
Version     : 1.0 
Created Date : 08-18-2021
Function    : Trigger for Account 
Modification Log :
* Developer                   Date          Version         Description
* ----------------------------------------------------------------------------                 
* Luis Oviedo                          1.0          Original Version
*************************************************************************************/
trigger AccountTrigger on Account (before insert) {
    AccountTriggerHandler handler = new AccountTriggerHandler();

      /**
      * @Name          beforeInsert
      * @Description   Account Before Insert
      * @Author        Luis Oviedo
      */

    if((Trigger.isBefore) && (Trigger.isInsert)){
        handler.beforeInsert(Trigger.new);
    }
}