require('dotenv').config();

 module.exports = {
	"development": {

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
  
