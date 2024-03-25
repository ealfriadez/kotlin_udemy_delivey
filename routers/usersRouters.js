const UsersController = require('../controllers/userController');

module.exports = (app) => {

    //OBTENER DATOS
    app.get('/api/users/getAll', UsersController.getAll);

    //GUARDAR DATOS
    app.post('/api/users/create', UsersController.register);
    app.post('/api/users/login', UsersController.login);

    //GUARDAR DATOS
    app.put('/api/users/update', upload.array('image', 1), UsersController.update);
}