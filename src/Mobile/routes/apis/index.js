const express = require('express');
const router = express.Router();

router.use('/getuser', require('./getuser'));

module.exports = router;
