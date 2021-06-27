# springboot-postgres-sample

This sample consist of components below: 
 * postgres-api (springboot)
 * postgres

# postgres-api (springboot)
postgres-api list sample entities in postgres database. List stored samples in postgres using command below:

<pre><code>curl -kv http://localhost:8080/entities</code></pre>

# postgres
postgres stores sample data in samples table (in my_database database)

to create database in postgres: <br/>
<pre><code>CREATE DATABASE my_database;</code></pre>

to create table called "samples" in "my_database" database: <br/>
<pre><code>CREATE TABLE samples (id INTEGER PRIMARY KEY, name VARCHAR);</code></pre>
 