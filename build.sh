#build and package postgres-api
cd postgres-api
rm -rf target
mvn package
cd target
jar xf postgres-api-1.0.0.jar
mkdir dependency
mv BOOT-INF dependency
mv META-INF dependency
cd ../../
#build Dockerfile
docker build -t resulguldibi/postgres-api .
#run postgres and spring-boot containers
docker-compose up -d
#create database and table in postgres

#create database in postgres
docker exec -it postgres psql -U postgresuser -c "create database my_database;"
#create table in postgres in my_database
docker exec -it postgres psql -U postgresuser my_database -c "CREATE TABLE samples (id INTEGER PRIMARY KEY, name VARCHAR);"
#insert sample record
docker exec -it postgres psql -U postgresuser my_database -c "insert into samples(id,name) values(1,'test');"

