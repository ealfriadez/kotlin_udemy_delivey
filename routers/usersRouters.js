const UsersController = require('../controllers/userController');

module.exports = (app) => {
    app.get('/api/getAll', UsersController.getAll);

    app.post('/api/users/create', UsersController.register);
}