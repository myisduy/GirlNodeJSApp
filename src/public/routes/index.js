function route(app) {

    app.use('/api', require('./apis'));
    app.use('/login', require('./login'));
    
    app.use('/', require('./home'));
    app.use((req, res) => {
    res.status(404).render('404', {
        url: req.originalUrl
    });
});
    
}
module.exports = route;