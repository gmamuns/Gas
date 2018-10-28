#include <SPI.h>
#include <Ethernet.h>

byte mac[] = { 0xDE, 0xAD, 0xBE, 0xEF, 0xFE, 0xED };
IPAddress server(192,168,0,176); //char server[] = "www.google.com";   
IPAddress ip(192, 168, 0, 177);EthernetClient client; // DHCP Ip of Arduino 

//Variable Declaration
int redLed = 12;
int greenLed = 11;
int buzzer = 10;   // buzzer to pin 10
int gasA0 = A5;  //Smoke/gas sensor pin A5
int sensorThres = 400;  //threshold value


   //Server Ip : 192, 168, 0, 176 | 255.255.255.0 |192, 168, 0, 1
  // Arduino IP : 192, 168, 0, 177 dhcp

void setup() {
  
  pinMode(redLed, OUTPUT);
  pinMode(greenLed, OUTPUT);
  pinMode(buzzer, OUTPUT);
  pinMode(gasA0, INPUT);
  // Open serial communications and wait for port to open:
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }
 
}

void loop() {
  
// Get Data From Sensor Here
int analogSensor = analogRead(gasA0);
String sensorValue = (String)analogSensor; 
//String getRequest = "GET /Smoke/smoke/insert.jsp?sid=sensor01&uname=ymamuns&data="+sensorValue+" HTTP/1.1";
String getRequest = "GET /Gas/gas/insert.jsp?sid=sensor01&uname=ymamuns&data="+sensorValue+" HTTP/1.1";
  
  

  Serial.print("Pin A0: ");
  Serial.println(analogSensor);
  // Checks if it has reached the threshold value
  if (analogSensor > sensorThres)
  {
    digitalWrite(redLed, HIGH);
    digitalWrite(greenLed, LOW);
    tone(buzzer, 1000, 200);
  }
  else
  {
    digitalWrite(redLed, LOW);
    digitalWrite(greenLed, HIGH);
    noTone(buzzer);
  }
  delay(100);



//Send Data to Server
 //Serial.println(getRequest); //testing in serial

  Ethernet.begin(mac, ip);
  delay(6000);
  Serial.println("connecting...");
  if (client.connect(server, 8080)) {
    Serial.println("connected");
    //client.println("GET /WeatherStation/insert?sid=test&data=000 HTTP/1.1"); //manually check
    client.println(getRequest);
    Serial.println("Data sending finished");
    client.println("Host: 192.168.0.176"); // Server IP
    client.println("Connection: close");
    client.println();
     
  } else {// if you didn't get a connection to the server:
        Serial.println("connection failed");
  }

  if (client.available()) {
    char c = client.read();
    Serial.print(c);
  }

  if (!client.connected()) {
      Serial.println("disconnecting.");
     client.stop();

    setup();
  }
}


