const faker = require('faker');
const mysql = require('mysql');

const connection = mysql.createConnection({
	host     : 'localhost',
	user     : 'root',
	database : 'join_us',
	password : 'pw123'
});

// let q = 'SELECT * FROM users';
// connection.query(q, function(error, results, fields) {
// 	if (error) throw error;
// 	console.log(results[1].email);
// });

// INSERTING DATA
// let q =
// 	'INSERT INTO users (email) VALUES("rysty_the_dog@gamil.com")';

// connection.query(q, function(error, results, fields) {
// 	if (error) throw error;
// 	console.log(results);
// });

// INSERTING DATA TAKE 2
// let person = {
// 	email      : faker.internet.email(),
// 	created_at : faker.date.past()
// };

// const end_result = connection.query(
// 	'INSERT INTO users SET ? ',
// 	person,
// 	function(error, results, fields) {
// 		if (error) throw error;
// 		console.log(results);
// 	}
// );

// connection.end();

// INSERTING LOTS OF DATA!!!! ======================

// let data = [];

// for (let i = 0; i < 500; i++) {
// 	data.push([
// 		faker.internet.email(),
// 		faker.date.past()
// 	]);
// }

// console.log(data);

// let q = 'INSERT INTO users(email, created_at) VALUES ? ';

// connection.query(
// 	q,
// 	[
// 		data
// 	],
// 	function(error, results, fields) {
// 		if (error) throw error;
// 		console.log(results);
// 	}
// );

let q =
	"SELECT DATE_FORMAT(created_at, '%W %D %Y') as earliest_date FROM users order by created_at limit 1";
connection.query(q, function(error, results, fields) {
	if (error) throw error;
	console.log(results);
});

connection.end();
