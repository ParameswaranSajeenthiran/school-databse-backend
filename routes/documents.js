
import express from "express";
import { insertNewALResult, insertNewDocument, insertNewOLResults, updateDocument } from "../services/document.js";
import { _getAllDocuments, _insertALResults, _insertDocument, _insertOLResults, _updateDocument } from "../controllers/documents.js";
import { updateStudent } from "../services/studentDatabse.js";

var documentsRouter = express.Router();


// post
documentsRouter.post('/', _insertDocument);


// get by StudentId
documentsRouter.get('/:studentID', async (req, res) => {
    
    const studentId = req.params.studentID;
    console.log("studentId################################" ,studentId)
    try {
        const documents = await _getAllDocuments(studentId);
        console.log("documents _____________" ,documents)
        res.json(documents);
    } catch (error) {

        console.log("error" ,error)
        res.status(500).json({ error: error.message });
    }
    }

    );

documentsRouter.put('/:studentID', async (req, res) => {


    const studentId = req.params.studentID;

    console.log("req body uydpate documanet #################",  req.body ,studentId);
    const result = await _updateDocument(req.params.studentID, req.body);

    res.send(result);
}
);
export default documentsRouter;