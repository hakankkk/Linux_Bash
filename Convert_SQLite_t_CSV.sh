#!/bin/bash

# Prompt the user to enter the path to the SQLite database file
read -p "Enter the path to the SQLite database file: " dbPath

# Prompt the user to enter the name of the table containing the data to convert
read -p "Enter the name of the table to convert: " tableName

# Prompt the user to enter the path to save the CSV file
read -p "Enter the path to save the CSV file: " csvPath

# Execute the SQLite query to export the table to a CSV file
sqlite3 -header -csv $dbPath "SELECT * FROM $tableName;" > $csvPath

echo "Conversion complete. CSV file saved to $csvPath"
