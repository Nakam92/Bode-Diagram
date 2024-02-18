int ZVR = 0;
float ZVC = 0;
float ZVF;
float bx=100;
float by=600;
int i;
float xb=1;
float yb=1;
float f;
float t;
void setup () {
  size(800, 1200);
 
}

void ligne (){  // ligne pour le graphique
 strokeWeight(4);
 line (100,600,720,600);
 line (100,570,100,1200);
 fill(0,0,0);
 triangle (85,590, 100, 570, 115, 590); // flèche graphique
 triangle (710,615, 710, 585, 730, 600); // flèche graphique
 strokeWeight(2);
 
 int a=300;
 int b=800;
 int i=0;
 while(i < 3) // dropite horizontal et verticla à l'intérieur du graphique
   {
     line(a, 600, a, 1200);
     line(100, b, 720, b);
     a+=200;
     b+= 200;
     i++;
   }
}
void text(){   // valeurs sur le graphique
  fill(0,0,0);
 text ("10",110,585);
 text ("100",270,585);
 text ("1K",470,585);
 text ("10K",670,585);
 text ("0",70,620);
 text ("-20",40,810);
 text ("-40",40,1010);
 text ("-60",40,1210);
}
void textRes(){  // valeurs des résistances dans le tableau
  fill(0,0,0);
  text("1K",80,80);
  text("2.2K",80,110);
  text("4.7K",80,140);
  text("5.6K",80,170);
  text("10K",80,200);
  text("15K",80,230);
  text("33K",80,260);
  text("47K",80,290);
  text("68K",80,320);
  text("100K",80,350);
  fill(205,162,121); 
  rect(25,430,250,100); // résultat résistance
}
void textCond(){ // valeurs du condensateur dans le tableau
  fill(0,0,0);
  text("1nF",250,80);
  text("2.2nF",250,110);
  text("3.3nF",250,140);
  text("4.7nF",250,170);
  text("10nF",250,200);
  text("22nF",250,230);
  text("33nF",250,260);
  text("47nF",250,290);
  text("70nF",250,320);
  text("100nF",250,350);
  fill(205,162,121);
  rect(290,430,250,100);  // résultat du condensateur
  
}
void textFreq(){               //Fréqeunce
  fill(205,162,121);
  rect(555,430,230,100);
}
void schema(){               //schema
  fill(184,112,28);
  rect(410,100,350,300);
  strokeWeight(4);
  line (430,150,600,150);
  fill(154,84,81);                // couleur noir
  rect(480,135,75,25);            // encadrement résistance 
  line (600,150,600,200);
  line (580,200,620,200);
  line (580,220,620,220);
  line (600,223,600,275);
  line (430,275,600,275);
  fill(0,0,0);
  text("R",510,130);
  text("C",550,220);
}
void separ(){                // ligne de séparation des valeurs du tableau
  fill(0,0,0);
  line (25,90,175,90);
  line (25,120,175,120);
  line (25,150,175,150);
  line (25,180,175,180);
  line (25,210,175,210);
  line (25,240,175,240);
  line (25,270,175,270);
  line (25,300,175,300);
  line (25,330,175,330);
  
  line (200,90,350,90);
  line (200,120,350,120);
  line (200,150,350,150);
  line (200,180,350,180);
  line (200,210,350,210);
  line (200,240,350,240);
  line (200,270,350,270);
  line (200,300,350,300);
  line (200,330,350,330); 
}
void Gain(){                          // Bode (ligne qui bouge)
  stroke(0,0,0);                      //  couleur du Bode
  for (xb=0;xb<600;xb++)
   {
    ZVF=1/(ZVR*ZVC*0.0000000001*2*3.14);
    f=10*pow(10,xb/200);
    t=sqrt(pow(1,2)+pow((f/ZVF),2));
    yb=200*(log(t)/log(10));
    point(xb+bx,yb+by);
   }
   stroke(0);
}

  
 
void draw () {
  background (163,163,163);
  fill(0,0,0);
  rect(550,30,200,50);          // encadrement du prénom
  fill (255,255,255);               // couleur du prénom
  textSize(32);
  text ("Makan",600,70);
  fill (153,153,153) ;
  rect(25,550,750,1200);
  ligne();
  text();
  schema();             //appel fonction=schema
  
  
  
 
  

fill(205,162,121); rect(25,50,150,325);            //tableau résistance
rect(200,50,150,325);            // tableau condensateur
 
fill(0);
textSize(22);
textRes();                // appel de la fonction
textCond();          // appel de la fonction
textFreq();                // appel de la fonction
separ();                   // appel de la fonction 
ZVF=1/(ZVR*ZVC*0.000000001*2*3.14);
fill(0,0,0);
textSize(26);
text("R=                   ohms",28,500); text(ZVR,68,500);
text("C=                       nF",310,500); text(ZVC,360,500);
text("F0=                         Hz",570,500); text(ZVF,610,500);
Gain();

}





void mouseClicked() // sous programme du PC exécuté en cas de clic souris
{
if (mouseX > 25 && mouseX<175 && mouseY >50 && mouseY< 78 ) ZVR=1000 ; 
if (mouseX > 25 && mouseX<175 && mouseY >80 && mouseY< 108 ) ZVR=2200 ;
if (mouseX > 25 && mouseX<175 && mouseY >110 && mouseY< 138 ) ZVR=4700 ;
if (mouseX > 25 && mouseX<175 && mouseY >140&& mouseY< 168 ) ZVR=5600 ;
if (mouseX > 25 && mouseX<175 && mouseY >170 && mouseY< 198 ) ZVR=10000 ;
if (mouseX > 25 && mouseX<175 && mouseY >200 && mouseY< 228 ) ZVR=15000 ;
if (mouseX > 25 && mouseX<175 && mouseY >230 && mouseY< 258 ) ZVR=33000;
if (mouseX > 25 && mouseX<175 && mouseY >260 && mouseY< 288 ) ZVR=47000;
if (mouseX > 25 && mouseX<175 && mouseY >290 && mouseY< 318 ) ZVR=68000 ;
if (mouseX > 25 && mouseX<175 && mouseY >320 && mouseY< 350) ZVR=100000 ;

if (mouseX > 200 && mouseX<350 && mouseY >50 && mouseY< 78 ) ZVC=1 ;
if (mouseX > 200 && mouseX<350 && mouseY >80 && mouseY< 108 ) ZVC=2.2 ;
if (mouseX > 200 && mouseX<350 && mouseY >110 && mouseY< 138 ) ZVC=3.3 ;
if (mouseX > 200 && mouseX<350 && mouseY >140&& mouseY< 168 ) ZVC=4.7 ;
if (mouseX > 200 && mouseX<350 && mouseY >170 && mouseY< 198 ) ZVC=10 ;
if (mouseX > 200 && mouseX<350 && mouseY >200 && mouseY< 228 ) ZVC=22 ;
if (mouseX > 200 && mouseX<350 && mouseY >230 && mouseY< 258 ) ZVC=33;
if (mouseX > 200 && mouseX<350 && mouseY >260 && mouseY< 288 ) ZVC=47;
if (mouseX > 200 && mouseX<350 && mouseY >290 && mouseY< 318 ) ZVC=70 ;
if (mouseX > 200 && mouseX<350 && mouseY >320 && mouseY< 350) ZVC=100 ;
}
