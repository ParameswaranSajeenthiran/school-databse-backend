import mysql from 'mysql2';
import dotenv from 'dotenv';
dotenv.config();




const pool=mysql.createPool({
    host: process.env.MYSQL_HOST, 
    user:process.env.MYSQL_USER,
    password:process.env.MYSQL_PASSWORD,
    database:process.env.MYSQL_DATABASE

}).promise();
async function getAllStaffs() {
  const connection = await pool.getConnection();

  try {
    const [rows, fields] = await connection.execute('SELECT * FROM staffs');
    return rows;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

async function getStaffById(staffId) {
  const connection = await pool.getConnection();

  try {
    const [rows, fields] = await connection.execute('SELECT * FROM staffs WHERE id = ?', [staffId]);
    return rows[0];
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

async function insertNewStaff(staffData) {
  const connection = await pool.getConnection();

  try {
    const query =
      'INSERT INTO staffs (fullName, title, roleid, email, phoneNumber, staffId, password, createdAt, updatedAt) ' +
      'VALUES (?, ?, ?, ?, ?, ?, ?, NOW(), NOW())';

    const [rows, fields] = await connection.execute(query, [
      staffData.fullName,
      staffData.title,
      staffData.roleid,
      staffData.email,
      staffData.phoneNumber,
      staffData.staffId,
      staffData.password
    ]);

    return rows.insertId;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

async function deleteStaffById(staffId) {
  const connection = await pool.getConnection();

  try {
    const query = 'DELETE FROM staffs WHERE id = ?';
    const [rows, fields] = await connection.execute(query, [staffId]);
    return rows.affectedRows > 0;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

module.exports = { getAllStaffs, getStaffById, insertNewStaff, deleteStaffById };
