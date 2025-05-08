const express = require("express");
const dotenv = require("dotenv");
const articleRoutes = require("./routes/article.routes");

dotenv.config();
const app = express();

app.use(express.json());
app.use("/api", articleRoutes);

module.exports = app;
