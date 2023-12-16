import { insertNewDocument, insertNewALResult, insertNewOLResults, getAllDocuments, getAllALResults, getAllOLResults, updateDocument, deleteALResult, deleteOLResult } from '../services/document.js';

export const _insertDocument = async (req, res) => {
    const documentData = req.body.docment;
    try {
        console.log("req" ,req.body)
        const resutl1 = await insertNewDocument(req.body.document, req.body.studentId);
        const resutl2 = await insertNewALResult(req.body.alSubjects ,req.body.studentId);
        const resutl3 = await insertNewOLResults(req.body.olSubjects ,req.body.studentId);

        console.log("resutl1" ,resutl1)
        console.log("resutl2" ,resutl2)
        console.log("resutl3" ,resutl3)


        res.json({ id: resutl1 });
    } catch (error) {
        console.log("error" ,error)
        res.status(500).json({ error: error.message });
    }
    }

export const _insertALResults = async (req, res) => {
    const ALResultData = req.body;
    try {
        const insertedId = await insertNewALResult(ALResultData);
        res.json({ id: insertedId });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
    }

export const _insertOLResults = async (req, res) => {
    const OLResultData = req.body;
    try {
        const insertedId = await insertNewOLResults(OLResultData);
        res.json({ id: insertedId });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
    }

export const _getAllDocuments = async (studentId) => {
    // const studentId = req.params.student;
    console.log("studentId" ,studentId)
    try {
        const documents = await getAllDocuments(studentId);
        const alResults = await getAllALResults(studentId);
        const olResults = await getAllOLResults(studentId);
        console.log("documents #############" ,documents)
        console.log("alResults" ,alResults)
        console.log("olResults" ,olResults)

        let result = {
            documents: documents,
            alResults: alResults,
            olResults: olResults
        }

        return result;
    } catch (error) {
        console.log("error" ,error)
    }
    }


export const _updateDocument = async (studentID, body) => {

    try {
        // const result = await updateDocument(studentID, body);
        const result1= await deleteALResult(studentID);
        const result2= await deleteOLResult(studentID);
        const result3= await insertNewALResult(body.alSubjects ,studentID);
        const result4= await insertNewOLResults(body.olSubjects ,studentID);
        // console.log("result" ,result)


        return result4;
    } catch (error) {
        console.log("error" ,error)
    }
    }
