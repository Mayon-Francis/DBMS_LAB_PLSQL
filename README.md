# How to use
- Clone this repo
- Install Docker
- Run Database


## Install docker
- Windows users:
    - [Install Docker Desktop](https://docs.docker.com/desktop/install/windows-install")
    - Start docker desktop
- Linux Users:
    - Install [docker](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-20-04)
    - Install [docker compose](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-compose-on-ubuntu-22-04)
- Confirm working of docker compose by running `docker compose version`

## Run Database
- open the folder where the repo is cloned.
- Run the database with `docker compose up --build -d`
- Add the plsql scripts you would like to run in the `/scripts/` folder. refer `print.sql` file in the folder for reference.
- Start the plsql shell with `docker exec  -u root -i oracle bash -c "cd scripts && sqlplus system/admin"`
- You will have access to all files in the `/scripts` directory. try running `@print.sql`
- Exit plsql shell with `exit`
- Once you are done, run `docker compose down` to stop the database. (run this in the same folder where you ran docker compose up)


-  (optional) Additioanlly, For linux users, to execute a single .sql script :
    - execute the script with `./run.sh <fileName>`
    - example: `./run.sh print.sql`


## To delete the db data, and clear space
- run `docker compose down --volumes`

## To delete the oracle docker image and delete the dbData
- run `docker compose down --volumes --rmi all`
- note: you will have to re-download oracle image if you delete the image
