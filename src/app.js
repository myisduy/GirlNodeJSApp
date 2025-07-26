const express = require('express');
const path = require('path');
const app = express();

// Import hai app con
const mobileApp = require('./Mobile/app');
const desktopApp = require('./Desktop/app');
app.use((req, res, next) => {
  if (req.hostname.startsWith('m.') || req.hostname.startsWith('mobile.')) {
    return mobileApp(req, res, next); // chuyển sang app mobile
  } else {
    return desktopApp(req, res, next); // chuyển sang app desktop 
  }
});

const PORT = 3000;
app.listen(PORT, () => console.log(`✅ Main app listening on  http://localhost:${PORT}`));
