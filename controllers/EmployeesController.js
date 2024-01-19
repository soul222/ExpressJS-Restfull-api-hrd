const employees = require('packageName');

class EmployeesController {
    async index(req, res) {
        try {
            const employeesData = await employees.all();
        
            if (employeesData) {
                const data = {
                    message: "Get all resource",
                    data: employeesData
                };
                res.status(200).json(data);
            } else {
                const data = {
                    message: "Data is empty",
                    data: employeesData
                };
                res.status(200).json(data);
            }
           
        } catch (error) {
            res.status(500).json({ message: "Internal Server Error" });
        }
    }

   async store(req, res) {
        const { name, gender, phone, address, email, status, hired_on} = req.body;
        try {
            const newEmployeeId = await employees.create(req.body);
    
            if (newEmployeeId) {
                // Gunakan ID yang diterima untuk mendapatkan detail karyawan yang baru dibuat
                const newEmployee = await employees.find(newEmployeeId);
    
                const data = {
                    message: "Resource is added successfully",
                    data: newEmployee,
                };
                res.status(201).json(data);
            } else {
                res.status(402).json({ message: "All fields must be filled correctly" });
            }
        } catch (error) {
            res.status(500).json({ message: "Internal Server Error", error: error.message });
        }
    }

    async update(req, res) {
        const { id } = req.params;
        try {
            const employee = await employees.find(id);

            if (employee) {
                const employeeUpdated = await employees.update(id, req.body);
                const data = {
                    message: "Resource is update successfully",
                    data: employeeUpdated,
                };
                res.status(200).json(data);
            } else {
                const data = {
                    message: "Data not Found",
                };
                res.status(404).json(data);
            }
        } catch (error) {
            res.status(500).json({ message: "Internal Server Error" });
        }
    }

    async destroy(req, res) {
        const { id } = req.params;
        try {
            const employee = await employees.find(id);

            if (employee) {
                await employees.delete(id);
                const data = {
                    message: "Resource is delete successfully",
                };
                res.status(200).json(data);
            } else {
                const data = {
                    message: "Data not Found",
                };
                res.status(404).json(data);
            }
        } catch (error) {
            res.status(500).json({ message: "Internal Server Error" });
        }
    }

    async show(req, res) {
        const { id } = req.params;
        try {
            const employee = await employees.find(id);

            if (employee) {
                const data = {
                    message: "Get detail resource",
                    data: employee,
                };
                res.status(200).json(data);
            } else {
                const data = {
                    message: "Data not Found",
                };
                res.status(404).json(data);
            }
        } catch (error) {
            res.status(500).json({ message: "Internal Server Error" });
        }
    }

    async search(req, res) {
        const { name } = req.query;
        try {
            const employeesData = await employees.searchByName(name);
           if (employeesData) {
            const data = {
                message: `Get searched resource ${name}`,
                data: employeesData,
            };
            res.status(200).json(data);
           } else {
            const data = {
                message: `Resource ${name} not found`,
                data: employeesData,
            };
           }
        } catch (error) {
            res.status(500).json({ message: "Internal Server Error" });
        }
    }

    async getStatus(req, res) {
        const { status } = req.query;
        try {
            const employeesData = await employees.getAllByStatus(status);
            let totalemployeesData = employeesData.length 
            const data = {
                message: ` Get ${status} Resource`,
                total: totalemployeesData,
                data: employeesData
            };
            res.status(200).json(data);
        } catch (error) {
            res.status(500).json({ message: "Internal Server Error" });
        }
    }
}

const object = new EmployeesController();
module.exports = object;
