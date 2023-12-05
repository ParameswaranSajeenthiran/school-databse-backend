// medicals.js
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

export  async function getAllMedicals() {
  const connection = await pool.getConnection();

  try {
    const [rows, fields] = await connection.execute('SELECT * FROM medicals');
    return rows;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

export  async function getMedicalById(medicalId) {
  const connection = await pool.getConnection();

  try {
    const [rows, fields] = await connection.execute('SELECT * FROM medicals WHERE id = ?', [medicalId]);
    return rows[0];
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

export  async function insertNewMedical(medicalData) {
  const connection = await pool.getConnection();

  try {
    const query =
      'INSERT INTO medicals (height, weight, dateMeasured, allergies, createdAt, updatedAt) ' +
      'VALUES (?, ?, ?, ?, NOW(), NOW())';

    const [rows, fields] = await connection.execute(query, [
      medicalData.height,
      medicalData.weight,
      medicalData.dateMeasured,
      medicalData.allergies
    ]);

    return rows.insertId;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

  export  async function deleteMedicalById(medicalId) {
  const connection = await pool.getConnection();

  try {
    const query = 'DELETE FROM medicals WHERE id = ?';
    const [rows, fields] = await connection.execute(query, [medicalId]);
    return rows.affectedRows > 0;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

