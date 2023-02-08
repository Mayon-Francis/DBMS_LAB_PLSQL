# How to use
- run the database with `docker compose up --build -d`
- add the plsql scripts you would like to run in the `/scripts/` folder. refer `print.sql` file in the folder for reference.
-  For linux users:
    - execute the script with `./run.sh <fileName>`
    - example: `./run.sh print.sql`
- For windows users:
    - execute script with `powershell -executionpolicy bypass -File .\run.ps1 <scriptName>`
    - example `powershell -executionpolicy bypass -File .\run.ps1 print.sql`
- once you are done, run `docker compose down` to stop the database