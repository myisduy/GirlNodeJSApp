const express = require("express");
const handlebars = require("express-handlebars");
const path = require("path");
const pg = require("./config/db");
const route = require("./routes");
//http logger
//app.use(morgan('combined'));

const app = express();

// Set up Handlebars view engine
app.engine(
  "view",
  handlebars.engine({
    extname: ".view",
}));
app.set("view engine", "view");
app.set("views", path.join(__dirname, "app", "views"));
app.use(express.static(path.join(__dirname, "public", "css")));
app.use(express.static(path.join(__dirname, "public", 'js')));
app.use(express.static(path.join(__dirname, "public", "images")));
 app.use('/fontend', express.static(path.join(__dirname, "public", "fontends")));
route(app);
const PORT = 3000;

app.listen(PORT, () => console.log(`✅ Main app listening on  http://localhost:${PORT}`));
