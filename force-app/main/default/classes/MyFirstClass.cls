public with sharing class MyFirstClass {
    
    public void myFirstMethod() {
        String car = 'Opel';
        String myBrand = 'Corsa';
        String myColor= 'BMW';

        String myCar = car + myBrand + myColor;
        

        system.debug(car);
        system.debug(myBrand);
        system.debug(myColor);
        system.debug(myCar);

        //system.debug('Merhaba dunya Class ici');                               

    }

}
