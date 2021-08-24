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
        Eco_beforeInsert((List<Account>)Trigger.new);
    }

    public override void beforeUpdate(){
        if(!ranOnce) {
            Eco_beforeUpdate((List<Account>)Trigger.new);
        }
    }

    /**
    * @Name          Eco_beforeInsert
    * @Description   Before Insert
    * @Author        Deloitte
    * @CreatedDate   2019-09-27
    * @Return        void
    */
    public static void Eco_beforeInsert(List<Account> newAccountBF) {
        if(newAccountBF.size() > 0){ 
            for(Account a : newAccountBF) {          
                a.Name = a.Name + '_Test';       
            } 
        }
    }

    /**
    * @Name          Eco_beforeUpdate
    * @Description   Before Update
    * @Author        Deloitte
    * @CreatedDate   2020-02-28
    * @Return        void
    */
    public static void Eco_beforeUpdate(List<Account> newAccountBU) {
        if(newAccountBU.size() > 0){ 
            for(Account a : newAccountBU) {          
                a.Name = a.Name + '_Test';       
            } 
        }
    }    
}