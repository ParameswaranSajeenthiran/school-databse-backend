import mysql from 'mysql2';
import dotenv from 'dotenv';
dotenv.config();




const pool=mysql.createPool({
    host: process.env.MYSQL_HOST, 
    user:process.env.MYSQL_USER,
    password:process.env.MYSQL_PASSWORD,
    database:process.env.MYSQL_DATABASE

}).promise();



export async function getAllStudents(){
    const result =await pool.query('SELECT * FROM students');
    return result[0];
}

export async function getStudent(studentID){
    const result =await pool.query('SELECT * FROM students where id=?',[studentID]);
    return result[0];
}



export async function insertNewStudent(studentData){
    console.log("Student" ,studentData)

    // const query ='INSERT INTO students (fullName, gender, dob, admissionNo, religion, grade,  email, telephone, mobileNumber, whatsapp, parentIsDivorced, birthCertificateNo, birthregistryOffice, noOfSibilings, noOfSibilingWhoStudy, siblingsStudentId, withWhom, fatherId, motherId, guardianId, Image, medicalId, previousSchool, homeId, transportId, scholarshipId, admissionDate, createdAt, updatedAt ,permenantAdress,GSName,divisionNo ,divisionalSecretariat ,residentialAdress,viberNumber,isFartherAlive ,isMotherAlive) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW(), NOW(), ?, ?, ?, ?, ?, ?, ?, ?)';
console.log([
    studentData.fullName,
        null,
        null,
        studentData.admissionNo,
        null,
        studentData.grade,
        studentData.divisionNo,
        studentData.email,
        studentData.telephone,
        studentData.mobileNumber,
        studentData.whatsappNumber,
        studentData.parentIsDivorced,
        null,        
        null,
        studentData.noOfSibilings,
        studentData.noOfSibilingWhoStudy,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null,
        null
  ].length)

    // const [rows, fields] = await pool.query(query, [
    //     studentData.fullName,
    //     null,
    //     null,
    //     studentData.admissionNo,
    //     null,
    //     studentData.grade,
    //     studentData.divisionNo,
    //     studentData.email,
    //     studentData.telephone,
    //     studentData.mobileNumber,
    //     studentData.whatsappNumber,
    //     studentData.parentIsDivorced,
    //     null,        
    //     null,
    //     studentData.noOfSibilings,
    //     studentData.noOfSibilingWhoStudy,
    //     null,
    //     null,
    //     null,
    //     null,
    //     null,
    //     null,
    //     null,
    //     null,
    //     null,
    //     null,
    //     null,
    //     null
    //   ]);

    const query = 'INSERT INTO students (fullName, gender, dob, admissionNo, religion, grade, email, telephone, mobileNumber, whatsapp, parentIsDivorced, birthCertificateNo, birthregistryOffice, noOfSibilings, noOfSibilingWhoStudy, siblingsStudentId, withWhom, fatherId, motherId, guardianId, Image, medicalId, previousSchool, homeId, transportId, scholarshipId, admissionDate, createdAt, updatedAt, permenantAdress, GSName, divisionNo, divisionalSecretariat, residentialAdress, viberNumber, isFartherAlive, isMotherAlive) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,  NOW(), NOW(), ?, ?, ?, ?, ?, ?, ?, ?)';

const [rows, fields] = await pool.query(query, [
    studentData.fullName,
    null,
    null,
    studentData.admissionNo,
    null,
    studentData.grade,
    studentData.email,
    studentData.telephone,
    studentData.mobileNumber,
    studentData.whatsappNumber,
    studentData.parentIsDivorced=="on"?1:0,,
    null,
    null,
    studentData.noOfSibilings,
    studentData.noOfSibilingWhoStudy,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null,
    null
]);

     return rows.insertId;
}



    // update student 


    



export async function deleteStudent(studentID){
    const result =await pool.query('delete * FROM students where id=?',[studentID]);
    return result[0];
}

