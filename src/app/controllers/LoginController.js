class LoginController {

    index(req, res) {
        res.render('login.view');
        
    }
}
module.exports = new LoginController();
