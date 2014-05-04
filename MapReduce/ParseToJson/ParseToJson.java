import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;


public class ParseToJson {

	public static void main(String[] args) throws IOException {
		if( args.length <= 0 )
		{ 
			out.println( "example usage: " );
		}
		else
		{		
			BufferedReader reader = new BufferedReader(new FileReader(args[0]));
			BufferedWriter writer = new BufferedWriter(new FileWriter(args[1]));
			String line = null;
			while((line = reader.readLine() )!= null){
				String[] temp = line.split(" ");
				writer.write(temp[0] + " " + temp[1] + " " + temp[2] + " " + temp[3] + " " + temp[4] + " "+ temp[5] + "\n");
			
			}
			reader.close();
			writer.close();
		}
	}

}
