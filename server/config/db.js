const mysql = require('mysql')

// const db = mysql.createConnection({
//     host: "sql.freedb.tech",
//     user: "freedb_oprah",
//     password: "2MEW!H%Q2G*AUb5",
//     database: "freedb_react_db"
// })

// const db = mysql.createConnection({
//     host: "t07cxyau6qg7o5nz.cbetxkdyhwsb.us-east-1.rds.amazonaws.com",
//     user: "f9iz851yecdz8bvf",
//     password: "i5uvx10gdrhlceu8",
//     database: "uit2bh3x875n9y2o"
// })

const db = mysql.createConnection({
    host: "mysql-oprahstudiodb.alwaysdata.net",
    user: "289902",
    password: "qweasd123zxc",
    database: "oprahstudiodb_react",
})

module.exports = db;