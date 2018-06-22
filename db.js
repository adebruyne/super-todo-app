const pgp = require('pg-promise')();
const cn = {
  host: 'localhost',
  port: 5432,
  database: 'super-to-do-app',
  user: 'postgres',
  password: ''
};
const db = pgp(cn);

function getOne(id){
   return db.oneOrNone('SELECT * FROM todos WHERE id = $1', [id]);
    
};

// getTodo(2)
//     .then(function(data) {
//     // success;
//     console.log(data);
//     })
//     .catch(function(error) {
//     // error;
//     console.log(error);
//         });

module.exports = {
    getOne
}