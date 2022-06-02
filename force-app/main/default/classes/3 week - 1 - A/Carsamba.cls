/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-01-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class Carsamba {
    public static void game(string tkm) {

        List<String> computerList= new List<String>();

        computerList.add('tas'); 
        computerList.add('kagit'); 
        computerList.add('makas'); 
        system.debug(computerList);
        system.debug(computerList[0]);
        system.debug(computerList[1]);
        system.debug(computerList[2]);


    }

    public static void sum(List<Integer> lst){

        system.debug(' Gelen liste ' + lst);

        integer toplam = 0;
       

        for(integer i=0 ; i< lst.size() ; i++ ){
            toplam += lst[i];
            //toplam += list.get[i];
        }
        system.debug('Listenin toplami ' + toplam);

        lst.sort();
        system.debug('Listenin sort yapilmis hali ' + lst);
        system.debug('Listedeki en kucuk eleman' + lst[0]);
        system.debug('Listedeki en buyuk eleman' + lst[0]);


        /*
        for(integer eachInt : lst){

            toplam += eachInt;
        }

        system.debug('Toplam -->' + toplam);
            }

        */
}
}
