const express = require('express');
const app = express();
const http = require('http');
const server = http.createServer(app);
const logger = require('morgan');
const cors = require('cors');
const passport = require('passport');
const multer = require('multer');
const serviceAccount = require('./serviceAccountKey.json');
const admin = require('firebase-admin');


admin.initializeApp({
    credential: admin.credential.cert(serviceAccount)
});


const upload = multer({
    storage: multer.memoryStorage()
});

/*
* RUTAS
*/
const users = require('./routes/usersRoutes');

const port = process.env.PORT || 3000;

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({
    extended: true
}));

app.use(cors());
app.use(passport.initialize());
app.use(passport.session());

// console.log('PASSPORT', passport);

require('./config/passport')(passport);

app.disable('x-powered-by');

app.set('port', port);

/*
* LLAMANDO A LA RUTAS
*/
users(app, upload);

server.listen(3000,'172.31.2.216' || 'dpg-cncldbect0pc73fsi1s0-a.oregon-postgres.render.com', function(){
    //server.listen(3000,'delivery_db_9xm4_user:vatiAShJkkQbIlPc4OOpbpB3BEgGDWU3@dpg-cncldbect0pc73fsi1s0-a.oregon-postgres.render.com/delivery_db_9xm4' || 'localhost', function(){
        console.log('Aplicacion de NodeJS ' + process.pid + ' Iniciada...');
        console.log('Aplicacion de NodeJS ' + port + ' Iniciada...');
    });


// ERROR HANDLER
app.use((err, req, res, next) => {
    console.log(err);
    res.status(err.status || 500).send(err.stack);
});

module.exports = {
    app: app,
    server: server
}

// 200 - ES UN RESPUESTA EXITOSA
// 404 - SIGNIFICA QUE LA URL NO EXISTE
// 500 - ERROR INTERNO DEL SERVIDOR