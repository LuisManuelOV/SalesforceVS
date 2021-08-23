/**
* @File Name:   Eco_AccountTriggerHandler
* @Description: Trigger handler for Account object  
* @Author:      Deloitte, username@deloitte.ca
* @Group:       Apex Class
* @Modification Log :
* -------------------------------------------------------------------------------------
* Ver       Date        Author         Modification
* 1.0       2019-09-27  Deloitte     Created the file/class
* 1.1       2019-10-07  Deloitte     Updated to use trigger framework
**/
public with sharing class Eco_AccountTriggerHandler extends Eco_AbstractTriggerHandler {
    private static Boolean ranOnce = false;

    public override void beforeInsert(){
        Eco_BeforeInsert((List<Account>)Trigger.new);
    }

    public override void afterInsert(){
        if(!ranOnce) {
            Eco_BeforeUpdate((List<Account>)Trigger.new);
        }
    }

    /**
    * @Name          function1
    * @Description   
    * @Author        Deloitte
    * @CreatedDate   2019-09-27
    * @Return        void
    */
    public static void Eco_BeforeInsert(List<Account> newAccounts) {
        for(Account a : newAccounts) {          
            a.Name = a.Name + '_Test';       
        } 
    }

    /**
    * @Name          function2
    * @Description   
    * @Author        Deloitte
    * @CreatedDate   2020-02-28
    * @Return        void
    */
    public static void Eco_BeforeUpdate(List<Account> newAccounts) {
        for(Account a : newAccounts) {          
            a.Name = a.Name + '_Test';       
        } 
    }
}