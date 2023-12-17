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
    return result;
}

export async function getStudent(studentID){
    const result =await pool.query('SELECT * FROM students where id=?',[studentID]);
    return result[0];
}



export async function insertNewStudent(studentData){
    console.log("Student" ,studentData)


    const query = 'INSERT INTO students ( nameWithInitials, nameIdentifiedByInitials ,fullName, gender, dob, admissionNo, religion, grade, email, telephone, mobileNumber, whatsapp, parentIsDivorced, birthCertificateNo, birthregistryOffice, noOfSibilings, noOfSibilingWhoStudy, siblingsStudentId, withWhom, fatherId, motherId, guardianId, Image, medicalId, previousSchool, homeId, transportId, scholarshipId, admissionDate, createdAt, updatedAt, permenantAdress, GSName, divisionNo, divisionalSecretariat, residentialAdress, viberNumber, isFartherAlive, isMotherAlive) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,  NOW(), NOW(), ?, ?, ?, ?, ?, ?, ?, ?)';

const [rows, fields] = await pool.query(query, [
   
    studentData.nameWithInitials,
  studentData.nameIdentifiedByInitials,
  studentData.fullName,
  studentData.gender,
  studentData.dob,
  studentData.admissionNo,
  studentData.religion,
  studentData.grade,
  studentData.email,
  studentData.telephone,
  studentData.mobileNumber,
  studentData.whatsapp,
  studentData.parentIsDivorced == "on" ? 1 : 0,
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
  studentData.admissionDate,
  studentData.permenantAdress,
  studentData.GSName,
  studentData.divisionNo,
  studentData.divisionalSecretariat,
  studentData.residentialAdress,
  studentData.viberNumber,
  studentData.isFartherAlive ,
  studentData.isMotherAlive ,
    


]);

     return rows.insertId;
}



    // update student 


    



export async function deleteStudent(studentID){
    const result =await pool.query('delete * FROM students where id=?',[studentID]);
    return result[0];
}


export async function updateStudent(studentID,studentData){

    const updateQuery = `
  UPDATE students
  SET
    nameWithInitials = ?,
    nameIdentifiedByInitials = ?,
    fullName = ?,
    gender = ?,
    dob = ?,
    admissionNo = ?,
    religion = ?,
    grade = ?,
    email = ?,
    telephone = ?,
    mobileNumber = ?,
    whatsapp = ?,
    parentIsDivorced = ?,
    birthCertificateNo = ?,
    birthregistryOffice = ?,
    noOfSibilings = ?,
    noOfSibilingWhoStudy = ?,
    siblingsStudentId = ?,
    withWhom = ?,
    fatherId = ?,
    motherId = ?,
    guardianId = ?,
    Image = ?,
    medicalId = ?,
    previousSchool = ?,
    homeId = ?,
    transportId = ?,
    scholarshipId = ?,
    admissionDate = ?,
    updatedAt = NOW(),
    permenantAdress = ?,
    GSName = ?,
    divisionNo = ?,
    divisionalSecretariat = ?,
    residentialAdress = ?,
    viberNumber = ?,
    isFartherAlive = ?,
    isMotherAlive = ?
  WHERE id = ?
`;

const [updateRows, updateFields] = await pool.query(updateQuery, [
  studentData.nameWithInitials,
  studentData.nameIdentifiedByInitials,
  studentData.fullName,
  studentData.gender,
  studentData.dob,
  studentData.admissionNo,
  studentData.religion,
  studentData.grade,
  studentData.email,
  studentData.telephone,
  studentData.mobileNumber,
  studentData.whatsapp,
  studentData.parentIsDivorced == "on" ? 1 : 0,
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
  studentData.admissionDate,
  studentData.permenantAdress,
  studentData.GSName,
  studentData.divisionNo,
  studentData.divisionalSecretariat,
  studentData.residentialAdress,
  studentData.viberNumber,
  studentData.isFartherAlive,
  studentData.isMotherAlive,
  studentID
  // Add the condition value here, for example, studentId
]);

}

function generateQueryForBulkInsertOfStudents(studentData) {
  let query = 'INSERT INTO students (nameWithInitials, nameIdentifiedByInitials ,fullName, gender, dob, admissionNo, religion, grade, email, telephone, mobileNumber, whatsapp, parentIsDivorced, birthCertificateNo, birthregistryOffice, noOfSibilings, noOfSibilingWhoStudy, siblingsStudentId, withWhom, fatherId, motherId, guardianId, Image, medicalId, previousSchool, homeId, transportId, scholarshipId, admissionDate, createdAt, updatedAt, permenantAdress, GSName, divisionNo, divisionalSecretariat, residentialAdress, viberNumber, isFartherAlive, isMotherAlive) VALUES ';
  let values = [];

  studentData.forEach((student, index) => {
      query += `(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,  NOW(), NOW(), ?, ?, ?, ?, ?, ?, ?, ?)`;
      values.push(
       
        student.nameWithInitials || null,
        student.nameIdentifiedByInitials || null,
        student.fullName || null,
        student.gender || null,
        student.dob || null,
        student.admissionNo || null,
        student.religion || null,
        student.grade || null,
        student.email || null,
        student.telephone || null,
        student.mobileNumber || null,
        student.whatsapp || null,
        student.parentIsDivorced || null,
        student.birthCertificateNo || null,
        student.birthregistryOffice || null,
        student.noOfSibilings || null,
        student.noOfSibilingWhoStudy || null,
        student.siblingsStudentId || null,
        student.withWhom || null,
        student.fatherId || null,
        student.motherId || null,
        student.guardianId || null,
        student.Image || null,
        student.medicalId || null,
        student.previousSchool || null,
        student.homeId || null,
        student.transportId || null,
        student.scholarshipId || null,
        student.admissionDate || null,
        student.permenantAdress || null,
        student.GSName || null,
        student.divisionNo || null,
        student.divisionalSecretariat || null,
        student.residentialAdress || null,
        student.viberNumber || null,
        student.isFartherAlive || null,
        student.isMotherAlive || null
      );

      if (index !== studentData.length - 1) {
          query += ',';
      }
  });
console.log("query" ,query)
  return { query, values };
}


export async function insertBulkStudents(students){
  const { query, values } = generateQueryForBulkInsertOfStudents(students);
  const result = await pool.query(query, values);
  return result;
}

