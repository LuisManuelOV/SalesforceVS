/**
  * @File Name    :   Eco_TriggerInterface
  * @Description  :   Trigger Interface
  * @Date Created :   2017-05-09
  * @Author       :   Luis Oviedo
  * @group        :   Interface
  * @Modification Log:
  **************************************************************************************
  * Ver       Date        Author              Modification
  * 1.0       2021-08-18  Luis Oviedo          Craeted the file/class
  **/
public interface Eco_TriggerInterface
{
    void bulkBefore();
    void bulkAfter ();
    void andFinally();

    void beforeInsert();
    void beforeUpdate();
    void beforeDelete();

    void afterInsert  ();
    void afterUpdate  ();
    void afterDelete  ();
    void afterUndelete();

    void execute();
}