/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-20-2022
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
trigger ContactTriggerNewVersion on Contact (before insert, before update, after insert, after update, after delete, after undelete) {

    //! GLOBAL set olusturuyoruz. Tum 
set<id> setAccIds= new set<id>(); 

//! 1. Baslangic noktasi
    If(trigger.isAfter){

//! INSERT ve Undelete


        If(Trigger.isInsert || Trigger.isUndelete){ //!  Kayit Undelete oldugu zaman, Insert mantigi vardir.
            //! Contact Recordlarini inceliyorum
            for (Contact eachCon : trigger.new) {

                //! Parent var mi diye soruyoruz
                if(eachCon.AccountId != Null){

                    //! ID varsa listeye ekliyoruz
                    setAccIds.add(eachCon.AccountId);
                }}}                    

//! UPDATE

//! 1. Baslangic noktasi
    If(trigger.isUpdate){

        //! Contact Recordlarini inceliyorum
        for (Contact eachCon : trigger.new) {

            //! Account Id'de bir degisiklik olmus mu? Olmussa Contact ya baska Acc gecmis ya da bagli degildi yeni geldi. Ya da bagliydi Bagini kopardik.
                                            //! eachCon.id= Recordumu cagiriyorum
                                            //! (eachCon.id).AccountId =  Record'un AccountId'sine ulasiyorum
            if(eachCon.AccountId != trigger.oldMap.get(eachCon.id).AccountId){

                //! Hem yeniyi guncellemem hem de eskiyi guncellemem lazim. Cunku eski ile bagi kopup silindi. Hem de yeni durum var. Iki farkli Account uzerinde yapilan islem var
                setAccIds.add(eachCon.AccountId); //! Hem YENI ID ekliyoruz
                setAccIds.add(trigger.oldMap.get(eachCon.id).AccountId); //! Hem ESKI ID ekliyoruz

            }}}

//! DELETE
    IF(trigger.isDelete){
            
            //! Contact Recordlarini inceliyorum
            for (Contact eachCon : trigger.old) {
                         
                if(eachCon.AccountID != null){ //! Silinen Contact(Child), Acc(Parent) varsa id'sini al.
                            
                        setAccIds.add(eachCon.AccountId);

            }}}
                 

//! Hem INSERT hem de Update AYNI LISTEYI kullansin

//! 2. --> 3. basamakla iliskilidir. Sonucta yapacagim islemi hangi Record'lar uzerinde yapacaksam onu cagiracagim SOQL yaziyorum. Burada 3.islem(Sonuc) Parent Object uzerinde olacak. Child'i olan Parent'i cagiriyorum. 

                                                                               //!Inner Query
         List<Account> ListAccounts = [SELECT id, name, Number_of_Contacts__c, (SELECT name FROM Contacts)  FROM Account WHERE id IN : setAccIds];
                                                                                        //! Yukarida Line 15'de Contact'i olan Account(Parent)'lari aldik. Simdi SOQL ile Sadece bu Account'lari cagiriyoruz.


            //! Account, icindeki Contact'lerin INNER QUERY ile hepsini getirmem lazim cunku onlarin sayisini hesaplamaliyim. UNUTMA Contact'ler olmadan islem yapamayiz. Data Base'de var ama cagirmadan islem yapamam. SOQL icinde olmasi gerekiyor

//! 3--> Sonuc olarak ne hedefliyorsam onu yaptiriyorum.
                for (Account eachAcc : ListAccounts) {

                    integer sayi = eachAcc.contacts.size(); //! acc.contacts = Contact'lerin listesi 
                    eachAcc.Number_of_Contacts__c = sayi;         
                }

                update ListAccounts;
            }}


            https://abc26-dev-ed.my.salesforce.com/_ui/common/apex/debug/ApexCSIPage