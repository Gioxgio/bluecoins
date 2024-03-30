# Bluecoins export
Bluecoins ([Android](https://play.google.com/store/apps/details?id=com.rammigsoftware.bluecoins), [MacOS](https://apps.apple.com/it/app/bluecoins-finance-budget/id1590297575?platform=iphone)) is an application that allows you to keep track of your finances. I use it extensively and I love it.
After many years of using it, I started to feel the need for better graphs and then a way to extract data from the application.
<br><br>
One of the features feature of the app is the ability to back up data to Google Drive. If you keep the default settings you will find a copy of the app's database in `Bluecoins/QuickSync/bluecoins.fydb` on your Google Drive account.
<br><br>
Once you have the database you can start adapting the script to export the data to a csv. This project's scripts look for a `bluecoins.fydb` file where data can be found and run a query that exports the `Year`, `Account`, `Amount`, `Type`, `Category`, `Subcategory` for each transaction, finally it saves the query result to the `output.csv` file.
Input file path/name, query and output file path/name can be customised.
<br><br>
Personally, I copy the contents of the output file into a Google Sheets file where I can freely aggregate the data.
