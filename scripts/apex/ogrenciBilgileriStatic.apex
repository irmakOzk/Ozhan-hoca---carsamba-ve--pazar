Decimal fizikNot = 80.5;
Decimal kimyaNot = 45.7;
Decimal matNot = 90.7;

Decimal ortNot = OgrenciBilgileri.notOrtalamasiHesapla(fizikNot, kimyaNot, matNot);
System.debug(ortNot);


OgrenciBilgileri ogr1 = new OgrenciBilgileri();
ogr1.bilgiGirisi('Ozhan', 'Gunes', ortNot);



System.debug(ogr1);