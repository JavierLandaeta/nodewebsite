const express = require("express");
const app = express();
const path = require("path");
//settings
app.set("port", 80)

// middlewares

// routes
app.get("/", (req, res) => {
    res.sendFile(path.join(__dirname, 'views/index.html'))
    

})
// static files

//Listening the server
app.listen(app.get("port"), () => {
    console.log("Server on port", app.get("port"));
})