void setup(){
  // létrehozunk egy új autós kártyát audi néven
  CarCard audi = new CarCard("Audi",
                             "TTS Roadster",
                             272,
                             250,
                             1984,
                             8.0);
  
  // létrehozunk egy új autós kártyát daihatsu néven
  CarCard daihatsu = new CarCard("Daihatsu",
                                 "Copen",
                                 87,
                                 180,
                                 1298,
                                 6.0);
  // a két PÉLDÁNYt megkérjük hogy írják ki a nevüket
  audi.printFullName();
  daihatsu.printFullName();
  
  println("*******************");
  
  // elkérjük mind a 32 generált kártyát, hogy ne pazarolj el fél órát a begépelésre
  CarCard[] T = CarCardGenerator.getCarCards();
  // egy új i index segítségével mind a 32 elemen végigmegyünk a tömbben
  for(int i = 0; i < 32; i++){
    print((i+1) + ". kártya: ");
    T[i].printFullName();
  }
  
}