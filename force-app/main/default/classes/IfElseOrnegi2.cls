public with sharing class IfElseOrnegi2 {
    
    public string odulBelirle(integer sira) {
        string odul;
        if (sira == 1){
            odul = 'Altın';
        } else if (sira == 2){
            odul = 'Gumuş';
        } else if (sira == 3){
            odul = 'Bronz';
        } else if (sira > 3){
            if (sira <= 10){
                odul = 'İlk 10 a Girdiniz';
            }else {
                odul = 'Katılımcı Sertifikası';
            }
        }

        return odul;

    }
}
