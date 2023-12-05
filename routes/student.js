
import express from "express";
import { getAllStudents, insertNewStudent } from "../services/studentDatabse.js";

var router = express.Router();


router.get('/', async (req, res) => {
    console.log("request", req);
    console.log(req.query.currentDate);
    const result = await getAllStudents(req.query.currentDate);

    res.send(result[0]);
});


router.post('/', async (req, res) => {
    console.log("req body",  req.body);
    const result = await insertNewStudent(req.body.studentData);

    res.send(result[0]);
});


router.delete('/:studentID', async (req, res) => {
    console.log("req body",  req.body);
    const result = await deleteStudent(req.params.studentID);

    res.send(result[0]);
}  )
router.get('/:studentID', async (req, res) => {
    console.log("req body",  req.body);
    const result = await getStudent(req.params.studentID);

    res.send(result[0]);
})

router.put('/:studentID', async (req, res) => {
    console.log("req body",  req.body);
    const result = await updateStudent(req.params.studentID, req.body.studentData);

    res.send(result[0]);
}
);








export default router;