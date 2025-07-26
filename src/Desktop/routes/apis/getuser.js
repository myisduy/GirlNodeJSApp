const express = require('express');
const router = express.Router();

// GET /api/session
router.get('/', (req, res) => {
    res.json({ message: 'Session API is working...' });
});

module.exports = router;
