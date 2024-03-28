DB_FILE="bluecoins.fydb"
QUERY="SELECT     substr(date, 0, 5) as ""Year"",     act.accountName ""Account"",     replace(amount * 1. / 1000000, '.', ',') as ""Amount"",     ttt.transactionTypeName as ""Type"",     pct.parentCategoryName as ""Category"",     cct.childCategoryName as ""Subcategory"" FROM     TRANSACTIONSTABLE tt     inner join ACCOUNTSTABLE act on act.accountsTableID = tt.accountID     inner join TRANSACTIONTYPETABLE ttt on ttt.transactionTypeTableID = tt.transactionTypeID     inner join CHILDCATEGORYTABLE cct on cct.categoryTableID = tt.categoryID     inner join PARENTCATEGORYTABLE pct on pct.parentCategoryTableID = cct.parentCategoryID where     deletedTransaction = 6"

# CSV file path
CSV_FILE="output.csv"

# Execute SQLite query and export result to CSV
sqlite3 -header -csv "$DB_FILE" "$QUERY" > "$CSV_FILE"
