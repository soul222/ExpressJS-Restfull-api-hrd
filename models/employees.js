// import database
const db = require("../config/database");

// make Student model
class employees {
    static all() {
        return new Promise((resolve, reject) => {
            // query ke db untuk ambil data
            const sql = "SELECT * FROM employees";
            db.query(sql, (sql, results) => {
                resolve(results);
            });
        });
    }

    // promise 1
    static create(employees) {
        return new Promise((resolve, reject) => {
            const sql = "INSERT INTO employees SET ?";
            db.query(sql, employees, (err, results) => {
                if (err) {
                    reject(err);
                } else {
                    // Menggunakan callback untuk mendapatkan ID dari hasil operasi INSERT
                    resolve(results.insertId);
                }
            });
        });
    }
    



        // promise 2
        return new Promise((resolve, reject) => {
            const sql = `SELECT * FROM employees WHERE id = ?`;
            db.query(sql, id, (err, results) => {
                resolve(results);
            });
        });
    }


    static find(id) {
        // lakukan promise, select by id
        return new Promise((resolve, reject) => {
            const sql = `SELECT * FROM employees WHERE id = ?`;
            db.query(sql, id, (err, results) => {
                resolve(results[0]);
            });
        });
    }

    static async update(id, data) {
        // update data
        await new Promise((resolve, reject) => {
            // query untuk update data
            const sql = "UPDATE employees SET ? WHERE id = ?";
            db.query(sql, [data, id], (err, results) => {
                resolve(results);
            });
        });

        // select data by id
        const student = await this.find(id);
        return student;
    }

    static async delete(id) {
        // query delete
        return new Promise((resolve, reject) => {
            // query sql
            const sql = "DELETE FROM employees WHERE id = ?";
            db.query(sql, id, (err, results) => {
                resolve(results);
            });
        });
    }

    // Query Search by Name
    static searchByName(name) {
        return new Promise((resolve, reject) => {
          const sql = "SELECT * FROM employees WHERE name LIKE ?";
          db.query(sql, [`%${name}%`], (err, results) => {
            resolve(results);
          });
        });
      }

    // Query get All Status which Parameter (Active,Inactive, & Terminated)
      static getAllByStatus(status) {
        return new Promise((resolve, reject) => {
          const sql = "SELECT * FROM employees WHERE status = ?";
          db.query(sql, [status], (err, results) => {
            resolve(results);
          });
        });
      }
}


// export model
module.exports = employees;
