const express = require("express");
const app = express(); // create express app
const path = require("path");
require("dotenv").config();
// add middleware

app.use(express.static(path.join(__dirname, ".", "dist")));
app.use(express.static("public"));

app.use((req, res, next) => {
  res.sendFile(path.join(__dirname, ".", "dist", "index.html"));
});

// start express server on port 3000
app.listen(process.env.PORT, "::", () => {
  console.log("server started on port 3000");
});
