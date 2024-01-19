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
router.get("/employees/search", EmployeesController.search);
router.get("/employees", EmployeesController.index);
router.get("/employees/status", EmployeesController.getStatus);
router.post("/employees", EmployeesController.store);
router.get("/employees/:id", EmployeesController.show);
router.put("/employees/:id", EmployeesController.update);
router.delete("/employees/:id", EmployeesController.destroy);

// export routing
module.exports = router;
