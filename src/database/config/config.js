require('dotenv').config();

 module.exports = {
	"development": {
		"username": process.env.DB_USER || 'root',
		"password": process.env.DB_PASS || '',
		"database": process.env.DB_NAME || "undergames_db",
		"host": process.env.DB_HOST || 'localhost',
		"port": process.env.DB_PORT || 3306,
		"dialect": "mysql",
		"logging": false,
		"operatorsAliases": 0
	},
	"test": {
		"username": "root",
		"password": null,
		"database": "database_test",
		"host": "127.0.0.1",
		"dialect": "mysql",
		"operatorsAliases": 0
	},
	"production": {
		"username": process.env.DB_USER,
		"password": process.env.DB_PASS,
		"database": process.env.DB_NAME,
		"host": process.env.DB_HOST,
		"dialect": "mysql",
		"operatorsAliases": 0
	}
} 
 
/* 
require('dotenv').config();
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
  } */