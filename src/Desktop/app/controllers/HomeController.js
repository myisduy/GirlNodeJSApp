class HomeController {

    index(req, res) {
        res.render('home');
        console.log('Home page accessed at ' + new Date());
        
    }
}
module.exports = new HomeController();
