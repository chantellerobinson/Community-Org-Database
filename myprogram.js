const mariadb = require('mariadb');

const dbConfig = {
  host: '127.0.0.1',
  port: 3306,
  user:'root',
  password: 'Boogas88'
};

mariadb.createConnection(dbConfig)
    .then(conn => {
      console.log("connected ! connection id is " + conn.threadId);
    })
    .catch(err => {
      console.log("not connected due to error: " + err);
    });
