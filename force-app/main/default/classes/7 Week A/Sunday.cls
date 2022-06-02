/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-20-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class Sunday {
    
    public static void createAccounttest(string nameofAccount) {
        Account acc1 = new Account();
        acc1.Name = nameofAccount;
        acc1.Active__c = 'Yes';

        insert acc1;


        list<contact> listCons= new list<contact>();
        for (Integer i = 1; i <= 5; i++) {
                 
        contact con = new contact();
        con.firstname = acc1.name + i;
        con.LastName =  'Contact' + i;
        con.AccountId= acc1.id;

        listCons.add(con);
       }
        insert listCons;
             

        list<Contact> conList = [SELECT id, name FROM Contact ORDER BY createdDate DESC LIMIT 5];

        for (Contact c : conList) {
            System.debug(c);
            
        }

    }}