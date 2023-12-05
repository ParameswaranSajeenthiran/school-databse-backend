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

    const query =
      'INSERT INTO students (name, gender, dob, admissionNo, religion, grade, division, email, telNumber, mobileNumber, whatsapp, parentIsDivorced, birthCertificateNo, birthregistryOffice, noOfSibilings, noOfSibilingWhoStudy, siblingsStudentId, withWhom, fatherId, motherId, guardianId, Image, medicalId, previousSchool, homeId, transportId, scholarshipId, admissionDate, createdAt, updatedAt) ' +
      'VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW(), NOW())';


    const [rows, fields] = await pool.execute(query, [
        studentData.name,
        studentData.gender,
        studentData.dob,
        studentData.admissionNo,
        studentData.religion,
        studentData.grade,
        studentData.division,
        studentData.email,
        studentData.telNumber,
        studentData.mobileNumber,
        studentData.whatsapp,
        studentData.parentIsDivorced,
        studentData.birthCertificateNo,
        studentData.birthregistryOffice,
        studentData.noOfSibilings,
        studentData.noOfSibilingWhoStudy,
        studentData.siblingsStudentId,
        studentData.withWhom,
        studentData.fatherId,
        studentData.motherId,
        studentData.guardianId,
        studentData.Image,
        studentData.medicalId,
        studentData.previousSchool,
        studentData.homeId,
        studentData.transportId,
        studentData.scholarshipId,
        studentData.admissionDate
      ]);
     return rows.insertId;
}


export async function deleteStudent(studentID){
    const result =await pool.query('delete * FROM students where id=?',[studentID]);
    return result[0];
}

