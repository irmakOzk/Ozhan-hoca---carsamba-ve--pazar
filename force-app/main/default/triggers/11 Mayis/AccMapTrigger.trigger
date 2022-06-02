/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-11-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger AccMapTrigger on Account (before insert, after insert) {
if(trigger.isAfter && trigger.isUpdate){
        
        System.debug('Account update trigger of account Object');

            map<id, Account> accNewMap = trigger.newMap;//! ilk once .old / .new ile datalari getirmeliyim
            map<id, Account> accOldMap = trigger.oldMap; 


            set<id> AccountIds = accNewMap.keySet(); //! Listedeki id'leri keyset method'u ile listeden cikarip, duplicate olmasin diye id'leri set icine yerlestiriyoruz.

            for (ID eachAccID : AccountIds) { //! set icindeki id'leri tek tek cikariyoruz.

                System.debug('Acc id ' + eachAccID);

                //! Value                       //! key
                Account newAcc = accNewMap.get(eachAccID); //! Account'a ait 1 NEW Record'u getiriyorum
                System.debug('new acc name = ' + newAcc.Name );

                //! Value                        //! key
                Account oldAcc = accOldMap.get(eachAccID); //! Account'a ait 1 OLD Record'u getiriyorum
                System.debug('old acc name = ' + oldAcc.Name );
    }
        }
}