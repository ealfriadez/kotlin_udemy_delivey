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
    'host': 'dpg-cncldbect0pc73fsi1s0-a.oregon-postgres.render.com',
    'port': 5432,
    'database': 'delivery_db_9xm4',
    'user': 'delivery_db_9xm4_user',
    'password': 'vatiAShJkkQbIlPc4OOpbpB3BEgGDWU3',
    'ssl': 'true'    
    /*'host': 'localhost',
    'port': 5432,
    'database': 'delivery_db',
    'user': 'postgres',
    'password': '40294774'*/
};

const db = pgp(dataBaseConfig);

module.exports = db;