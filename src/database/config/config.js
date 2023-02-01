require('dotenv').config();


 module.exports = {
	"production": {
		PORT: process.env.PORT || 3008,
		DB_USER: process.env.DB_USER || 'root',
		DB_PASS: process.env.DB_PASS ||  null,
		DB_NAME: process.env.DB_NAME || 'undergames_db',
		DB_HOST: process.env.DB_HOST || '127.0.0.1',
		DB_PORT: process.env.DB_PORT ||  3306,
		dialect: "mysql",
		logging: false,
		operatorsAliases: 0
	}

}  
  
