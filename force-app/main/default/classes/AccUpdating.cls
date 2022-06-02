/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-11-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class AccUpdating {
    
    public static void updatingAcc() {

        list<Account> accList = [SELECT id,name, annualRevenue FROM Account ORDER BY annualRevenue desc NULLS Last LIMIT 3];
        
        list<Account> newAccList = new list<Account>();
  
        
        for(account acc : accList){

            acc.Name += '  :) Come on';
            newAccList.add(acc);
        }

        if(newAccList !=null && newAccList.size()>0){
        update accList;
        }
}
}
