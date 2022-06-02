/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-12-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger AccountTrigger on Account (before insert, before update, after insert, after update) {

    if(trigger.isBefore && trigger.isInsert){

        System.debug(':::::::Before Insert :::::::::' );
        System.debug('trigger new -> '+ trigger.new);
        System.debug('trigger old -> ' + trigger.old);
        System.debug('Trigger new map ->' +trigger.newmap);
        System.debug('Trigger old map -> ' +trigger.oldMap);
    }

    if(trigger.isAfter && trigger.isInsert){

        System.debug(':::::::After Insert :::::::::' );
        System.debug('trigger new -> '+ trigger.new);
        System.debug('trigger old -> ' + trigger.old);
        System.debug('Trigger new map ->' +trigger.newmap);
        System.debug('Trigger old map -> ' +trigger.oldMap);
    }
    if(trigger.isBefore && trigger.isUpdate){

        System.debug('::::::Before Update :::::::::' );
        System.debug('trigger new -> '+ trigger.new);
        System.debug('trigger old -> ' + trigger.old);
        System.debug('Trigger new map ->' +trigger.newmap);
        System.debug('Trigger old map -> ' +trigger.oldMap);
    }
    if(trigger.isAfter && trigger.isUpdate){

        System.debug(':::::::After Insert :::::::::' );
        System.debug('trigger new -> '+ trigger.new);
        System.debug('trigger old -> ' + trigger.old);
        System.debug('Trigger new map ->' +trigger.newMap);
        System.debug('Trigger old map -> ' +trigger.oldMap);
    }

}

