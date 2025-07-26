const morgan = require("morgan");
const vhost = require("vhost");
const express = require("express");
const handlebars = require("express-handlebars");
const path = require("path");
const pg = require("../config/db");

const route = require("./routes");
//http logger
//app.use(morgan('combined'));

const app = express();

// Set up Handlebars view engine
app.engine(
  "view",
  handlebars.engine({
    extname: ".view",
  })
);
app.set("view engine", "view");
app.set("views", path.join(__dirname, "app", "views"));
express.static(path.join(__dirname, "public", "css"));
express.static(path.join(__dirname, "public", "js"));
app.use((req, res, next) => {
  res.locals.isMobile = req.hostname.startsWith("m.");
  next();
});
route(app);
module.exports = app; // Export the app for use in the main app.js