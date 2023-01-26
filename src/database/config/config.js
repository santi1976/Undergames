require('dotenv').config();

 module.exports = {
	"development": {
		"port": process.env.PORT,
		"DB_HOST": "containers-us-west-179.railway.app",
		"DB_NAME": "railway",
		"DB_PASS": "mse5muqqTMZarKIdV5Ly",
		"DB_PORT": "5992",
		"DB_USER": "root",
		"dialect": "mysql",
		"logging": false,
		"operatorsAliases": 0
	},
	
	"test": {
		"port": process.env.PORT,
		"username": process.env.DB_USER,
		"password": process.env.DB_PASS,
		"database": process.env.DB_NAME,
		"host": process.env.DB_HOST,
		"dbport": process.env.DB_PORT,
		"dialect": "mysql",
		"logging": false,
		"operatorsAliases": 0
	},
	"production": {
		"port": process.env.PORT,
		"username": process.env.DB_USER,
		"password": process.env.DB_PASS,
		"database": process.env.DB_NAME,
		"host": process.env.DB_HOST,
		"dbport": process.env.DB_PORT,
		"dialect": "mysql",
		"logging": false,
		"operatorsAliases": 0
	}
	
}  
 
 
/* require('dotenv').config();
module.exports = 
{
	"development": {
	  "username": "root",
	  "password": null,
	  "database": "undergames_db",
	  "host": "127.0.0.1",
	  "dialect": "mysql"
	
	},
	"test": {
	  "username": "root",
	  "password": null,
	  "database": "database_test",
	  "host": "127.0.0.1",
	  "dialect": "mysql"
	},
	"production": {
	  "username": "root",
	  "password": null,
	  "database": "database_production",
	  "host": "127.0.0.1",
	  "dialect": "mysql"
	}
  }  */