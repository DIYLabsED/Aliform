import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

final String repository = "https://raw.githubusercontent.com/DIYLabsED/aliform/refs/heads/main/"; 

// Reads a file from a specified URL, puts it in a String array, and returns it
String[] readFileFromURL(String inputURL){
  
  List<String> output = new ArrayList<>();
  
  try{
    
    URL url = new URL(inputURL);
    BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream()));
    
    String line;
    while((line = reader.readLine()) != null){ 
      output.add(line);  
    }
        
    reader.close();
    
    
  } catch(Exception e){ // TODO: Add proper exception handling
   
    e.printStackTrace();
    
  }

  return output.toArray(new String[0]);
    
}



void setup(){
  
  JSONObject j = loadJSONObject(repository + "test-files/json-files/single-json-file.json");
  
  print(j.getString("name"));
  
}
