Car carObj1 = new Car(); // Olusturdugumuz Class'in,  Objectini / ornegini olusturuyoruz.
/*

//Class Level Variable 
carObj1.strColor = 'Blue'; //Variable, data atadik.
carObj1.intSpeed = 250;
carObj1.isHaveSunroof = true;
*/
carObj1.engineStart();
system.debug(engineStart.strColor1);
/*
System.debug(carObj1); //Tum Class Level variable'lar gelir.

System.debug(carObj1.strColor); //Tek variable gelir.

carObj1.engineStop();//Methoda ulasiriz.**

//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////

// Ayni Class'i kullanan farki ve Yeni bir OBJECT olusturduk
Car carObj2 = new Car();
carObj2.strColor = 'Red'; // Yeni bilgiler

System.debug(carObj2);
System.debug(carObj1);

*/