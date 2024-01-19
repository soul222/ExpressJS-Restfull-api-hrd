// import Student Controller
const EmployeesController = require("../controllers/EmployeesController");

// import express
const express = require("express");

// make an object router
const router = express.Router();

// make home routing
router.get("/", (req, res) => {
    res.send("Welcome To Management HRD");
});

// Routing For User



// Routing for Employees
router.get("/employees", EmployeesController.index);
router.post("/emoployees/", EmployeesController.store);
router.get("/emoployees/:id", EmployeesController.show);
router.put("/emoployees/:id", EmployeesController.update);
router.delete("/emoployees/:id", EmployeesController.destroy);
router.delete("/emoployees/:name", EmployeesController.search);
router.delete("/emoployees/:status", EmployeesController.getStatus);


// export routing
module.exports = router;