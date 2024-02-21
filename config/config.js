const promise = require('bluebird');
const options = {
    promiseLib: promise,
    query: (e) => {}
}

const pgp = require('pg-promise')(options);
const types = pgp.pg.types;
types.setTypeParser(1114, function(stringValue){
    return stringValue;
});

const dataBaseConfig = {
    'host': 'localhost',
    'port': 5432,
    'database': 'delivery_db',
    'user': 'postgres',
    'password': '40294774'
};

const db = pgp(dataBaseConfig);

module.exports = db;