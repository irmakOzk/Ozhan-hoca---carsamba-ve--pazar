/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-20-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger OpportunityTrigger on Opportunity (before insert,before update, after update, after insert) {

    //! 3
    if(Trigger.isBefore && trigger.isInsert)
    {
        for(Opportunity eachOpp : trigger.new){//! Record'lari getiriyorum


            System.debug('The name of Opp -> '+  eachOpp.Name + ' , the close date -> ' + eachOpp.CloseDate + ' , the Total Amount of Opp ->' + eachOpp.Amount);
        }

    }

   
//! 4
    if(Trigger.isAfter && trigger.isUpdate){

        
        for(Opportunity eachOpp : trigger.new){


            System.debug('The name of Opp-->' + eachOpp.Name + ' , The old(Orjinal) Amount --> ' + trigger.oldMap.get(eachOpp.id).Amount + ' , The new(New version)  Amount --> ' + eachOpp.Amount);

            System.debug('The name of Opp-->' + eachOpp.Name + ' , The old(Orjinal) Close Date --> ' + trigger.oldMap.get(eachOpp.id).CloseDate + ' , The new(New version) Close Date --> ' + eachOpp.CloseDate);
        }

    }

   
    if(trigger.isBefore){
        
        for(Opportunity eachOpp : trigger.new){//! Kiyas yapabilmem icin her Record teke dusurmeliyim. Ayrica kiyasta tek field'da ihtiyacim var. Bunun icinde For Each Loop kullanmaliyim.
            if (trigger.isUpdate) { //! Update olunca
//! Update'de Kiyaslama yapmak icin ORJINAL bilgiye ihtiyacim var. 
                if(eachOpp.stageName != trigger.oldmap.get(eachOpp.id).stageName){
                    System.debug('The name of Opp-->' + eachOpp.Name + ' , The description of Opp --> ' + eachOpp.description);
                }
            }}}
 

        If(trigger.isBefore && trigger.isUpdate){
            
            for (Opportunity eachopp : trigger.new){
                
                IF(eachopp.Stagename != trigger.oldMap.get(eachOpp.id).StageName){//! Stagename field'da herhangi bir degisiklik var mi
                    
                    If((eachOpp.StageName =='Prospecting' || eachOpp.StageName =='Qualification' || eachOpp.StageName =='Needs Analysis' ||eachOpp.StageName =='Value Proposition' ||eachOpp.StageName =='Id.Decision Makers' || eachOpp.StageName =='Perception Analysis ' ||eachOpp.StageName =='Proposal/Price Quote' ||eachOpp.StageName =='Negotiation/Review') && (trigger.oldMap.get(eachOpp.id).StageName =='Closed Won' || trigger.oldMap.get(eachOpp.id).StageName == 'Closed lost' )){//! Eger Closed Lost veya Closed Won oldugu zaman eski degerlere gitme

                    eachOpp.addError('Stage cannot be changed from Close Won or Closet Lost ');
                    }
                } }}


                If(trigger.isBefore && trigger.isUpdate){

                    for (Opportunity eachopp : trigger.new){

                        IF(eachopp.Stagename != trigger.oldMap.get(eachOpp.id).StageName){//! Stagename field'da herhangi bir degisiklik var mi

                            if(trigger.oldMap.get(eachOpp.id).StageName =='Closed Won' || trigger.oldMap.get(eachOpp.id).StageName == 'Closed lost'){
                                
                                eachOpp.addError('Please do not change');
                            }
                        }}}




        If(trigger.isbefore){ //! Hem insert hem de Update'de calisacak

            for(Opportunity eachOpp : trigger.new){

                If(eachOpp.Amount != Null && eachOpp.Discount_Percentage__c != Null){ //! Field'larin bos olmasi durumda hata vermemsi icin kendimizi garantiye aliyoruz.
               
                        
                    eachOpp.Discount_Amount__c = eachOpp.Amount* eachOpp.Discount_Percentage__c /100;

                }

                }
            }
        
       
        
        }





        
                    