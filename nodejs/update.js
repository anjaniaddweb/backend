var mysql = require('mysql');  
var con = mysql.createConnection({  
host: "localhost",  
user: "root",  
password: "",  
database: "anjani"  
});  
con.connect(function(err) {  
if (err) throw err;  
var sql = "UPDATE student SET s_city = 'mumbai' WHERE s_city = 'rajkot'";  
con.query(sql, function (err, result) {  
if (err) throw err;  
console.log(result.affectedRows + " record(s) updated");  
});  
}); 
