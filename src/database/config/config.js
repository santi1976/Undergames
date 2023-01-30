require('dotenv').config();

 module.exports = {
	"development": {
		PORT: process.env.PORT,
		DB_USER: process.env.DB_USER,
		DB_PASS: process.env.DB_PASS,
		DB_NAME: process.env.DB_NAME,
		DB_HOST: process.env.DB_HOST,
		DB_PORT: process.env.DB_PORT,
		dialect: "mysql",
		logging: false,
		operatorsAliases: 0
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
/* 
export const PORT = process.env.PORT || 3000


export const DB_HOST = process.env.DB_HOST || 'localhost'

export const DB_USER = process.env.DB_USER || 'root'

export const DB_PASSWORD = process.env.DB_PASSWORD || null
export const DB_NAME = process.env.DB_NAME || 'undergames_db'
export const DB_PORT = process.env.DB_PORT || 3306 */
