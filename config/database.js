// import mysql
const mysql = require("mysql")
const express = require('express');
// import dotenv
require("dotenv").config();

// make connection
const db = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_DATABASE,
});
// connect to database
db.connect(function (err) {
    if (err) {
        console.log(`koneksi error: ${err}`);
        return;
    } else {
        console.log("koneksi berhasil");
        return;
    }
});

// export db

module.exports =db;
