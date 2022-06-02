/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 04-30-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class SundayNight2 {
    
    public static void createdOfAccount(string nameAcc){

            Account acc = new Account ();
                acc.Name = nameAcc;
                insert acc;


            List<Contact> conList = new List<Contact>();
                for(integer i  = 1; i<=5 ; i++){
                    contact cn = new contact();
                    cn.firstName=  acc.Name;
                    cn.LastName = 'Contact ' + i;
                    cn.accountId=acc.Id;
                    conlist.add(cn);
                }
            if(!conList.isEmpty()) insert conList;
               
            //! Contact List ile, olusturdugumuz Contact'lari cagiriyoruz.
            List<Contact>  listCon = [SELECT name, account.Name FROM Contact ORDER By createdDate desc LIMIT 5];
            system.debug('Son olusturulan 5 Contact ' +  listCon);

            //! Account ile onun Contact'lerini cagiriyoruz.
            //! Parametreye gore filtre yapiyoruz.    
            Account listAcc =[SELECT name,(SELECT id, firstName FROM Contacts) FROM Account WHERE name =: nameAcc LIMIT 1];
            //! Account'taki Recordu olusturma zamanina gore cagiracagiz.
            // List<Account> listAcc =[SELECT name,(SELECT id, name FROM Contact) FROM Account ORDER BY CreatedDate desc LIMIT 1];
            system.debug('Account List with its Contacts ' +  listAcc);
            for(Contact cn1: listAcc.Contacts){
                system.debug(' Contacts'+ cn1);
            }
    }  
}
