/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-11-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger Acc2trigger on ACCOUNT (before insert) {
    If(trigger.isBefore && trigger.isUpdate){

        for (Opportunity eachopp : trigger.new){

            IF(eachopp.Stagename != trigger.oldMap.get(eachOpp.id).StageName){//! Stagename field'da herhangi bir degisiklik var mi

                if(trigger.oldMap.get(eachOpp.id).StageName =='Closed Won' || trigger.oldMap.get(eachOpp.id).StageName == 'Closed lost'){
                    
                    eachOpp.addError('Please do not change');
                }
            }

}}}