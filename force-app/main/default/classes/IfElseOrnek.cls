public with sharing class IfElseOrnek {
    public string odulBelirle(integer sira) {
        string odul;

        if (sira == 1){
            odul = 'Altın';
        } else if (sira == 2){
            odul = 'Gumuş';
        } else if (sira == 3){
            odul = 'Bronz';
        } else if (sira > 3 && sira <=10){
            odul = 'İlk 10 a Girdiniz';
        } else {
            odul = 'Katılımcı Sertifikası';
        }

        return odul;

    }
}
