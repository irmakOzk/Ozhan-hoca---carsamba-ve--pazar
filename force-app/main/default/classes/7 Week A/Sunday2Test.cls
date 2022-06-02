/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-20-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
@isTest
public with sharing class Sunday2Test {
  /* 
    @testvisible
    public static void makeDate() {
        Account acc1 = new Account();
        acc1.Name = 'test 1 ';
        acc1.Active__c = 'Yes';

        Account acc2 = new Account();
        acc2.Name = 'test 2';
        acc2.Active__c = 'Yes';
        
        Account acc3 = new Account();
        acc3.Name = 'test 3';
        acc3.Active__c = 'Yes';
        
        List<Account> listAcc = new List<Account>{acc1, acc2, acc3};
        
        insert listAcc;

        list<contact> listCons= new list<contact>();
        for (Integer i = 0; i < 300; i++) {
                 
        contact con = new contact();
        con.LastName =  'Contact' + i;

        if(i<100){
            con.firstname= listAcc[0].Name; 
            con.AccountId= listAcc[0].id; 
        }else if(i<200){
            con.firstname= listAcc[1].Name; 
            con.AccountId= listAcc[1].id;
        }else if(i<300){
            con.firstname= listAcc[2].Name; 
            con.AccountId= listAcc[2].id;
        }  
        listCons.add(con);
        }

        insert listCons;
}*/
        @isTest
        public static void Test1(){
            
//! Method'u cagiriyoruz            
            Sunday.createAccounttest('Test Temporary');//! Bu methodu calistirinca 1 Acc ve 5 Contact olusturuyor


//! Account olusmus mu Data Base'de ona bakiyoruz
        List<Account> AccQuery = [SELECT id, name FROM Account];

        //! system.assertEquals(expected, actual, msg)
        system.assertEquals(1, AccQuery.size(), 'kac tane Contact olustuguna baktim');
        system.assertEquals('Test Temporary', AccQuery[0].Name ,'Account\'ta kac tane olustuguna baktim');


//! Contact olusmus mu Data Base'de ona bakiyoruz
        list <Contact> ConQuery = [SELECT id, name FROM Contact];
        
        //! system.assertEquals(expected, actual, msg)
        system.assertEquals(5, ConQuery.size(), 'kac tane Contact olustuguna baktim');
        system.assertEquals('Contact 1', ConQuery[0].LastName, 'kac tane Contact olustuguna baktim');
        }
}
