public with sharing class OgrenciBilgileriStatic {
    Private String isim;
    Private String soyIsim;
    Private Decimal notOrtalamasi;
    
    public static decimal notOrtalamasiHesapla(decimal not1, decimal not2, decimal not3){
        decimal ortalama;
        ortalama = (not1 + not2 + not3)/3;
        return ortalama;
    }

    public void bilgiGirisi(String ism, String sIsm, Decimal notOrt) {
        
        isim = ism;
        soyIsim = sIsm;
        notOrtalamasi = notOrt;
       // System.debug(isim + '' + soyIsim + ':' + notOrtalamasi);
    }

}
