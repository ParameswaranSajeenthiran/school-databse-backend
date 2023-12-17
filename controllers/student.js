import { insertBulkStudents } from "../services/studentDatabse.js";

export const  _insertBulkStudents = async (req, res) => {
    const students = req.body;
    console.log("students" ,students.data.all)
    try {
        const insertedId = await insertBulkStudents(students.data.all);
        res.json({ id: insertedId });
    } catch (error) {
        console.log("error" ,error) 
        res.status(500).json({ error: error.message });
    }
    }
//



