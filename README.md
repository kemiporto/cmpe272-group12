cmpe272-group12
===============

This project goal is to bring more awareness to the California drought situation, and to give suggestion on how one can use water more wisely and avoid waste.

The easiest way to deploy this website as it is, is to use the cmpe272.war file. You can do it by installing Tomcat7 and moving this file to /var/lib/tomcat/webapp/.

The project website is connected to mongodb which has a hadoop connector. Hadoop was used mainly to read our data, process it and input the processed data on the database.

The main parts of our project are:

The webpages are jsp files and can be found in "Web Components JSP and Servlets" folder.

You can find the Map Reduce files used to process the data on MapReduce folder.

On Mongo folder there is the collections used for the analysis. Those collections are in json format and can be uploaded to mongo using mongoimport command. In there there is also a code for generating hightchart code from the data on mongo to be put on the jsp files.

One of the options on our website is for the user to upload a file which data will be put on mongo. An example of the input expected on the uploaded file is on the UploadFiles folder.
