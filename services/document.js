
import mysql from 'mysql2';
import dotenv from 'dotenv';
dotenv.config();

const pool=mysql.createPool({
    host: process.env.MYSQL_HOST, 
    user:process.env.MYSQL_USER,
    password:process.env.MYSQL_PASSWORD,
    database:process.env.MYSQL_DATABASE

}).promise();

// insert DOcumets to the database in the form 
// CREATE TABLE  `documents` (
//     `id` int(11) NOT NULL,
//    `birthregistryOffice` varchar(255) DEFAULT NULL,
//     `birthCertificateNo` varchar(255) DEFAULT NULL,
//     `grade5ScholarshipIndexNo` varchar(255) DEFAULT NULL,
//     `achievedmarks` varchar(255) DEFAULT NULL,
//     `studentId` int(11) NOT NULL,
//     `createdAt` datetime NOT NULL,
//     `updatedAt` datetime NOT NULL
//   )

export async function insertNewDocument(documentData,studentId){
    console.log("document inerting " ,documentData)

    const query ='INSERT INTO documents (birthregistryOffice, birthCertificateNo, grade5ScholarshipIndexNo, achievedmarks, studentId, createdAt, updatedAt) VALUES (?, ?, ?, ?, ?, NOW(), NOW())';
console.log([
        documentData.birthregistryOffice,
        documentData.birthCertificateNo,
        documentData.grade5ScholarshipIndexNo,
        documentData.achievedmarks,
        studentId,
    ])

    console.log("query" ,query)
     const [rows, fields] =await pool.query(query,[
        documentData.birthregistryOffice,
        documentData.birthCertificateNo,
        documentData.grade5ScholarshipIndexNo,
        documentData.achievedmarks,
        studentId,
    ]);
    console.log("result" ,rows)
    return rows.insertId;
}


// insert ALResults to the database in the form 
// CREATE TABLE `ALResults` (
//     `id` int(11) NOT NULL,
//     `studentId` int(11) NOT NULL,
//     `year` varchar(255) NOT NULL,
//     `indexNumber` varchar(255) NOT NULL,
//     `grade` varchar(255) NOT NULL,
//      `subject` varchar(2555) NOT NULL,
//     `createdAt` datetime NOT NULL,
//     `updatedAt` datetime NOT NULL
//   ) 


function generateQueryForALResults(ALResultData ,studentId){
    let query ='INSERT INTO ALResults (studentId, year, indexNumber, grade, subject, createdAt, updatedAt) VALUES ';
    let values = [];
    ALResultData.forEach((result, index) => {
        query += `(?, ?, ?, ?, ?, NOW(), NOW())`;
        values.push(studentId);
        values.push(result.year);
        values.push(result.indexNumber);
        values.push(result.grade);
        values.push(result.subject);
        if(index !== ALResultData.length - 1){
            query += ',';
        }
    });
    return {query, values};
}

export async function insertNewALResult(ALResultData ,studentId){
    console.log("ALResult" ,ALResultData)

  const {query, values} = generateQueryForALResults(ALResultData,studentId)
    
    const result = pool.query(query, values);

    return result;

}



function generateQueryForOLResults(OLResultData,studentId){
    let query ='INSERT INTO OLResults (studentId, year, indexNumber, grade, subject, createdAt, updatedAt) VALUES ';
    let values = [];
    OLResultData.forEach((result, index) => {
        query += `(?, ?, ?, ?, ?, NOW(), NOW())`;
        values.push(studentId);
        values.push(result.year);
        values.push(result.indexNumber);
        values.push(result.grade);
        values.push(result.subject);
        if(index !== OLResultData.length - 1){
            query += ',';
        }
    });
    return {query, values};
}

export async function insertNewOLResults(OLResults ,studentId){

    console.log("OLResult" ,OLResults)

    const {query, values} = generateQueryForOLResults(OLResults,studentId)

    
    const result = pool.query(query, values);

    return result;

}

export async function getAllDocuments(studentId){
    const query = 'SELECT * FROM documents WHERE studentId = ?';
    const [rows, fields] = await pool.query(query, [studentId]);
    return rows.length > 0 ? rows[0] : [ ];
}

export async function getAllALResults(studentId){
    const query = 'SELECT * FROM ALResults WHERE studentId = ?';
    const [rows, fields] = await pool.query(query, [studentId]);
    return rows;
}


export async function getAllOLResults(studentId){
    const query = 'SELECT * FROM OLResults WHERE studentId = ?';
    const [rows, fields] = await pool.query(query, [studentId]);
    return rows;
}

export async function deleteDocument(id){
    const query = 'DELETE FROM documents WHERE id = ?';
    const [rows, fields] = await pool.query(query, [id]);
    return rows;
}

export async function deleteALResult(id){
    const query = 'DELETE FROM ALResults WHERE studentId = ?';
    const [rows, fields] = await pool.query(query, [id]);
    return rows;
}

export async function deleteOLResult(id){
    const query = 'DELETE FROM OLResults WHERE studentId = ?';
    const [rows, fields] = await pool.query(query, [id]);
    return rows;
}

export async function updateDocument(id, documentData){

    console.log("documentData update ##########" ,documentData)
    const query = 'UPDATE documents SET birthregistryOffice = ?, birthCertificateNo = ?, grade5ScholarshipIndexNo = ?, achievedmarks = ?, studentId = ?, updatedAt = NOW() WHERE id = ?';
    const [rows, fields] = await pool.query(query, [
        documentData.birthregistryOffice,
        documentData.birthCertificateNo,
        documentData.grade5ScholarshipIndexNo,
        documentData.achievedmarks,
        documentData.studentId,
        documentData.id
    ]);
    return rows;
}

export async function updateALResult(id, ALResultData){
    const query = 'UPDATE ALResults SET year = ?, indexNumber = ?, grade = ?, subject = ?, updatedAt = NOW() WHERE id = ?';
    const [rows, fields] = await pool.query(query, [
        ALResultData.year,
        ALResultData.indexNumber,
        ALResultData.grade,
        ALResultData.subject,
        id
    ]);
    return rows;
}

export async function updateOLResult(id, OLResultData){
    const query = 'UPDATE OLResults SET year = ?, indexNumber = ?, grade = ?, subject = ?, updatedAt = NOW() WHERE id = ?';
    const [rows, fields] = await pool.query(query, [
        OLResultData.year,
        OLResultData.indexNumber,
        OLResultData.grade,
        OLResultData.subject,
        id
    ]);
    return rows;
}

export async function getDocument(id){
    const query = 'SELECT * FROM documents WHERE id = ?';
    const [rows, fields] = await pool.query(query, [id]);
    return rows;
}






