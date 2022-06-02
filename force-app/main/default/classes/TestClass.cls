public class TestClass {
   
    public String strTest = 'Örnek Değer';
    
    public void testMethod1(){
        strTest = 'örnek değer-1';
        system.debug(strTest);
    } 
    
    public void testMethod2(){
        testMethod1();
        
        strTest = 'örnek değer-2';
        system.debug(strTest);
    }

}