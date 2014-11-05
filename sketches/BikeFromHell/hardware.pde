import org.json.*;


class Hardware{
  
  String source; // name of configuration file
  int ny; // # of RGB-LEDs
  int bitd; // bits per channel
  int[][][] pinmap; // pin mapping
  float[] dotCorr; // dot correction data, physical LED order
  
  Hardware(String s){
    JSONObject myJsonObject = new JSONObject( s );
    println( myJsonObject );
  }
  
}


