import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

// Reads a file from a specified URL, puts it in a String array, and returns it
String[] readFileFromURL(String inputURL){
  
  List<String> output = new ArrayList<>();
  
  try{
    
    URL url = new URL(inputURL);
    BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream()));
    
    String line;
    while((line = reader.readLine()) != null){  // TODO: Figure out a better way to count, rather than having to do this loop twice
      output.add(line);  
    }
        
    reader.close();
    
    
  } catch(Exception e){ // TODO: Add proper exception handling
   
    e.printStackTrace();
    
  }

  return output.toArray(new String[0]);
    
}

void setup(){
  
  printArray(readFileFromURL("https://raw.githubusercontent.com/DIYLabsED/aliform/refs/heads/main/test-files/text-single-word.txt"));
  
}
