var express = require("express");
var app = express();

app.get("/", (req, res, next) => {
	res.json({done: "yes bro!", ready : true, devtron: true});
});

app.listen(3000, () => {
	console.log("Server running on port 3000, oh man");
});
