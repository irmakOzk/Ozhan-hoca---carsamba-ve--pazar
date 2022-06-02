/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-11-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger AccTrigger on Account (before insert, after Update, before Update) {

    if(trigger.isBefore && trigger.isUpdate){       
        
        for(Account eachAcc : trigger.new){
            
            if(eachAcc.AnnualRevenue != trigger.oldMap.get(eachAcc.id).AnnualRevenue){
             //decimal result = (eachAcc.AnnualRevenue - trigger.oldMap.get(eachAcc.id).AnnualRevenue);
                
                if(eachAcc.AnnualRevenue != Null && trigger.oldMap.get(eachAcc.id).AnnualRevenue !=Null){                   
                    
                    decimal fark = eachAcc.AnnualRevenue - trigger.oldMap.get(eachAcc.id).AnnualRevenue;                  
                        
                        if(fark>0){
                            System.debug('Deger artti--> ' + fark);
                        
                        }else if(fark<0){
                            //System.debug('Deger azaldi --> ' + fark);
                            
                            eachAcc.AnnualRevenue.adderror('Eksi deger yazdirilamaz');   
                            
                        }else{
                            
                            
                            System.debug('Degerlerinizi kontrol edin'); 
                            }
}}}}}  
