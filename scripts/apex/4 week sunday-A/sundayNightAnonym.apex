Map<string, List<Double>> cityofHot = new map<string, List<Double>>();

List<Double> istOfHot = new List<Double>{11.5, 17.4, 21.3, 15.5, 8.7, 22.2, 26.3};
cityofHot.put('ist', istOfHot);

//2
List<Double> NYOfHot = new List<Double>{3.5, 6.0, 1.1, 0.1, -1.1, 6.4, 8.1 };
cityofHot.put('New York', NYOfHot);

//3
List<Double> HongkokOfHot = new List<Double>{-11.5, -1.4, -21.3, -10.5, -8.7, -3.2, -2.3};
cityofHot.put('Hongkok', HongkokOfHot);

//4
List<Double> LondraOfHot = new List<Double>{0.0, 5.2, -7.1, 0.2, 2.2, 3.2, 0.1};
cityofHot.put('Londra', LondraOfHot);

//5
List<Double> parisOfHot = new list<Double>{33.5, 26.5, 20.4, 38.5, 32.0, 28.4, 36.6};
cityofHot.put('paris', parisOfHot);

system.debug(cityofHot);


Map<String,Double> ortalamaninMap = new Map<String,Double>(); //! Her sehrin ortalamasini tutacak BOS map olusturuyoruz
      
        for(string eachSehir : cityofHot.keySet()){ //! Set listesindeki, her bir KEY cikariyoruz

            string printString = 'The City is ' + eachSehir + '.  ' + '  The tempuratures are  ' +   cityofHot.get(eachSehir); //! get methodu ile Value'yu getiriyoruz           
           
           
            system.debug(printString);

                
                double sum = 0;    
                for(double C : cityofHot.get(eachSehir)){ //! Ortalama icin toplama islemi
                sum += c;  
 
                } 

                double ortalama= sum/(cityofHot.get(eachSehir).size()); //! ortalama icin bolme islemi
                ortalamaninMap.put(eachSehir,ortalama);   //! buldugumuz sonucu listeye ekliyoruz.                
        }
            system.debug('Sicaklik Ortalamalari ' + ortalamaninMap);
        
        Set<String> less10 = new Set<String>();
        Set<String> more10 = new Set<String>();

        for(string cty : ortalamaninMap.keySet()){ //! 

            if(ortalamaninMap.get(cty)>10){
                    more10.add(cty);
            }else{
                    less10.add(cty);
            }
        }
        system.debug(' Sicaklik ortalamsi 10C buyuk olan sehirler --> ' + more10);
        system.debug(' Sicaklik ortalamsi 10C kucuk olan sehirler --> ' + less10);
      

