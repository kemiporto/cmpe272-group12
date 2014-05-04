import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;


public class ParseToJson {

	public static void main(String[] args) throws IOException {
		if( args.length != 2 )
		{ 
			System.out.println( "example usage: ParseToJson ExampleComma.txt Example.json" );
		}
		else
		{		
			BufferedReader reader = new BufferedReader(new FileReader(args[0]));
			BufferedWriter writer = new BufferedWriter(new FileWriter(args[1]));
			String line = null;
			writer.write( "[" );
			int firstRead = 1;
			int firstWrite = 1;
			String[] columns = new String[0];
			while((line = reader.readLine() )!= null){
				if( firstRead == 1 )
				{
					columns = line.split( "," );
					if( columns.length == 0 )
					{
						columns = line.split(" ");

						System.out.println( "Found Spaces" );
					}
					else if( columns.length == 0 )
					{
						columns = line.split( "\t" );

						System.out.println( "Found tabs" );
					}
					else
					{
						System.out.println( "Found Commas" );
					}
					firstRead = 0;
				}
				else
				{
					if( firstWrite == 1 )
					{
						writer.write( "{" );					
					}
					else
					{
						writer.write( ",{" );
					}
					firstWrite = 0;
					String[] temp = line.split( "," );
					if( temp.length == 0 )
					{
						temp = line.split(" ");
					}
					else if( temp.length == 0 )
					{
						temp = line.split( "\t" );
					}
					
					String stringToWrite = new String();
					for( int i = 0; i < temp.length; i++ )
					{
						if( temp[i].matches("[-+]?\\d*\\.?\\d+") )
						{
							stringToWrite += '"' + columns[i] + '"' + ":" + temp[i];
						}
						else
						{
							stringToWrite += '"' + columns[i] + '"' + ":" + '"' + temp[i] + '"';
						}
						if( ( i + 1 ) != temp.length )
						{
							stringToWrite += ",";
						}
					}
					writer.write( stringToWrite );
					writer.write( "}" );			
				}
			}
			writer.write( "]" );
			reader.close();
			writer.close();
		}
	}

}
