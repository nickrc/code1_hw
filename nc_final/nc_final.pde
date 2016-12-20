float[] info = {0.11,9.98,291.00};
float[] info1 = {40.1,74,0,217.63};

int i;
float coordinates;

float lat = 0;
float lon = 0;

float data = 0;
float latitude = 0;
float longitude = 0;
//float response = 0;
String time;

float layer = 0;

void setup() {
  size(800,800);
  background(255);
   noStroke();
  ellipseMode(CENTER);
  rectMode(CENTER);
  
  String apiKey = "786ed10bff31df8451d6a3ff7adfd18e";
  String url = "http://api.openweathermap.org/pollution/v1/o3/0.0,10.0/current.json?appid=";
  
  JSONObject json = loadJSONObject(url + apiKey);
  
  JSONObject location = json.getJSONObject("location");
  latitude = location.getFloat("latitude");
  longitude = location.getFloat("longitude");

   fill(0);
   text("latitude: " + latitude, 10, 70);
   text("longitude: " + longitude, 10, 90);
   
   float data = json.getFloat("data");
   String time = json.getString("time");
   
   text("ozone: " + data, 10, 110);
   text("time: " + time, 10, 130);
   
   
}



void draw(){
  //background(255);
  
  
  fill(150);
  ellipse(width/2, 1000, 600,600);
  int i = 2;
  layer = map(info[i],0,500,0,100);
  
  
  
  rect(width/2, 400, 300, 50);
  rect(width/2, 500, 300, layer);
  rect(width/2, 600, 300, 50);
  
  //stroke(0);
  
  //lat = map(info[0],0,1,0,300);
  //lon = map(info[1],0,100,0,300);
  //line(lon,400,lon,500);
  //line(400,lat,500,lat);
  
  textSize(26);
  text("New York:",10,175);
  
  float grey = 150;
  
  ellipse(780,40,15,15);
 fill(0);
  ellipse(780,70,15,15);
  
  
  fill(0);
   //text("data: " + data, 10, 110);
   //text("time: " + time, 10, 130);
   //text("latitude: " + latitude, 10, 70);
   //text("longitude: " + longitude, 10, 90);

}

void keyPressed(){
    if (i == 2) {
      i = 1;
      
    }
       
  
  
  }