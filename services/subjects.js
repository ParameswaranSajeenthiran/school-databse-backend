import mysql from 'mysql2';
import dotenv from 'dotenv';
dotenv.config();

const pool=mysql.createPool({
    host: process.env.MYSQL_HOST, 
    user:process.env.MYSQL_USER,
    password:process.env.MYSQL_PASSWORD,
    database:process.env.MYSQL_DATABASE

}).promise();

 export async function getAllSubjects() {
  const connection = await pool.getConnection();

  try {
    const [rows, fields] = await connection.execute('SELECT * FROM subjects');
    return rows;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

export async function getSubjectById() {

  try {
    const [rows, fields] = await pool.execute('SELECT * FROM subjects where id=?', [id]);
    return rows;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}



export async function insertNewSubject(newSubjectData) {

  try {
    const [result] = await pool.execute(
      'INSERT INTO subjects (name, medium, sylabusYear, grade, createdAt, updatedAt) VALUES (?, ?, ?, ?, NOW(), NOW())',
      [newSubjectData.name, newSubjectData.medium, newSubjectData.sylabusYear, newSubjectData.grade]
    );

    console.log('New subject inserted with ID:', result.insertId);
  } catch (error) {
    console.error('Error inserting new subject:', error.message);
  } finally {
    // Close the connection
  }
}
