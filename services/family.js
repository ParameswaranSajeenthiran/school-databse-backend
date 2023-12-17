import mysql from 'mysql2';
import dotenv from 'dotenv';
import e from 'express';
dotenv.config();




const pool=mysql.createPool({
    host: process.env.MYSQL_HOST, 
    user:process.env.MYSQL_USER,
    password:process.env.MYSQL_PASSWORD,
    database:process.env.MYSQL_DATABASE

}).promise();


// insert farher to the database in the form
export async function insertNewFather(fatherData){
    console.log("father" ,fatherData)



    const sql = `
  INSERT INTO father (
    fartherFullName,
    fartherDateOfBirth,
    fartherTelephoneNumber,
    fartherWhatsappNumber,
    fartherViberNumber,
    fartherEmailAddress,
    fartherOccupation,
    fartherMonthlyIncome,
    fartherAddressOfPlaceOfWork,
    fartherNicNO,
    fartherReasonForNoNIC,
    studentId
  ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
`;

const [rows, fields] = await pool.query(sql, [
    fatherData.fartherFullName || null,
  fatherData.fartherDateOfBirth || null,
  fatherData.fartherTelephoneNumber || null,
  fatherData.fartherWhatsappNumber || null,
  fatherData.fartherViberNumber || null,
  fatherData.fartherEmailAddress || null,
  fatherData.fartherOccupation || null,
  fatherData.fartherMonthlyIncome || null,
  fatherData.fartherAddressOfPlaceOfWork || null,
  fatherData.fartherNicNO || null,
  fatherData.fartherReasonForNoNIC || null,
  fatherData.studentId || null,
]);

return rows.insertId;
}


