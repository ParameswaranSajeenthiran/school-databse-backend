import mysql from 'mysql2';
import dotenv from 'dotenv';
dotenv.config();

const pool=mysql.createPool({
    host: process.env.MYSQL_HOST, 
    user:process.env.MYSQL_USER,
    password:process.env.MYSQL_PASSWORD,
    database:process.env.MYSQL_DATABASE

}).promise();

async function getAllSubjects() {
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
