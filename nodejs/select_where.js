var mysql = require('mysql');


var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "anjani"
});


con.connect(function(err) {
  if (err) throw err;
  con.query("SELECT * FROM student WHERE s_city LIKE 'S%'", function (err, result) {
    if (err) throw err;
    console.log(result);
  });
});
