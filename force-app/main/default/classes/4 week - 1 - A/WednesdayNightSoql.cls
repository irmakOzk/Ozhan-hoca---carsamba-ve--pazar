/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-01-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public  class WednesdayNightSoql {

    public static void accountSoql() {

        //! Olusturulan son kayidi bulmak icindi 
        Account LastAcc = [SELECt id, name FROM ACCOUNT ORDER BY CreatedDate DESC LIMIT 1] ; 
        System.debug('Olusturulan son kayit' + LastAcc);

        //! Kayitlar icinden filitreleyerek Un% ile baslayan kayitlari getir
        List<Account> accList1 = [SELECt id, name FROM ACCOUNT WHERE name LIKE 'Un%' ]; 
            System.debug( ' All list size '+ accList1.size());

        //! Kayitlarin olusturulma tarihine gore en yeniden en eskiye dogru siralamali liste
        List<Account> accList2 = [SELECT id, name, phone, createdDate from Account ORDER BY Createddate DESC];


            System.debug( ' All list size '+ accList2.size());
            
            integer sayac=0;
            for (Account eachAcc :accList1) { //! Sayac ile 
                sayac ++;
                System.debug(Sayac  + '. kaydin adi -->' + eachAcc.name);            
            }
   
    }

    public static void accSoql()  {
     
        //! En buyuk cirosu olan eleman 
        Account largestAnnualRevenue = [Select id, name, AnnualRevenue FROM ACCOUNT WHERE AnnualRevenue != Null ORDER BY AnnualRevenue DESC LIMIT 1]; 
        System.debug('En buyuk cirosu olan firma' + largestAnnualRevenue );

        //! Ciroya gore Buyukten kucuge gore listele
        List<Account> accList3 = [Select id, name, AnnualRevenue FROM ACCOUNT WHERE AnnualRevenue != Null ORDER BY AnnualRevenue DESC ]; 

        System.debug( ' All list size '+ accList3.size());
            
            integer sayac=0;
            for (Account eachAcc :accList3) { 
 
                     sayac ++;
                     System.debug(Sayac  + '. kaydin adi -->' + eachAcc.name + '. Annual revenue --> ' + eachAcc.AnnualRevenue); 
                                   
                }
                          
    }

    public static void opporSoql(){


        List<Opportunity> oppList= [Select id, name, StageName, Amount From Opportunity WHERE Amount != Null and StageName != 'Closed Won' ];
        System.debug(' Opp list -->' + oppList);

        

            if (!oppList.isEmpty()) {
                         
                        integer sayac = 0;
                        for (opportunity eachOpp : oppList) {
                            sayac++;
                            System.debug(sayac+  '. Opp name-->' + eachOpp.name + '.. Opp Amount --> ' + eachOpp.StageName);
                            
                        }   
                
            } else {
                System.debug('ERROR');
            }
    }

    public static void opplargestAmount() {
        Opportunity oppList2 = [select id, name,  Amount FROM Opportunity WHERE amount != Null ORDER BY Amount desc LIMIT 1];
        System.debug(' The Largest Amount -->' + oppList2);
        
    }
    }
    
