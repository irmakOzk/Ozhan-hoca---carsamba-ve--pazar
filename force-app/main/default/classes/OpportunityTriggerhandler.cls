/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-20-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@istest
public with sharing class OpportunityTriggerhandler {
    
    @isTest
    public static void test1() {

        Opportunity opp = new Opportunity();
        opp.name  = 'Test opp';
        opp.StageName = 'Closed Won';
        insert opp;

        
         

    }
}
