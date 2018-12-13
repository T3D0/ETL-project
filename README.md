# ETL-project
in-class project 
Technical Report:

We used kaggle to extract a csv file with information about museums in the United States as well as a JSON file with data pertaining to reviews about those same museums.
Museum Directory: https://www.kaggle.com/imls/museum-directory
Museum Reviews: https://www.kaggle.com/annecool37/museum-data

I then read the csv file into python using pandas.  Once the csv file was read into Jupyter, I was able to select the columns that I wanted, which were Museum ID, Museum Name and State that the museum was located in.  After I had pruned the columns and dataframe down to what fields we were working with I renamed the columns to match the MySQL and JSON files that they would be interacting with.  Once I had renamed them, I reset the index, dropped duplicates and then set the index back to Museum Name.  This made the dataframe "Museums" ready to be exported to SQL.

Next, I read in the JSON file into pandas via the same methods.  Unfortunately, the JSON wasn't stored in the same manner as our CSV and it took a little more manipulation to be able to show exactly what we wanted.  Each museum had an array associated with it and was its own column.  So we averaged the arrays of reviews assocatied with each museum to make it just two values associated with each.  Once it was just the index and singular rating float column, I reset the index to allow me to manipulate the column that contained museum names.  I then renamed the columns to match the Museum Name column from my CSV file.

I created the database and two tables in SQL so they'd be ready to have data imported into them from python.  I also had to specify the language in SQL to be UTF-8 encoding because there were some broken characters that SQL wasn't recognizing.  Once we had troubleshooted the encoding issue, I was able to upload the data into SQL from jupyter notebook.  I was able to combine the two tables into one that had Museum name, Museum ID, state, and rating.
