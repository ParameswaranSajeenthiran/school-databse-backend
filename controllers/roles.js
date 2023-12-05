import mysql from 'mysql2';
import dotenv from 'dotenv';
dotenv.config();




const pool=mysql.createPool({
    host: process.env.MYSQL_HOST, 
    user:process.env.MYSQL_USER,
    password:process.env.MYSQL_PASSWORD,
    database:process.env.MYSQL_DATABASE

}).promise();

async function getAllRoles() {
  const connection = await pool.getConnection();

  try {
    const [rows, fields] = await connection.execute('SELECT * FROM roles');
    return rows;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

async function getRoleById(roleId) {
  const connection = await pool.getConnection();

  try {
    const [rows, fields] = await connection.execute('SELECT * FROM roles WHERE id = ?', [roleId]);
    return rows[0];
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

async function insertNewRole(roleData) {
  const connection = await pool.getConnection();

  try {
    const query = 'INSERT INTO roles (name, createdAt, updatedAt) VALUES (?, NOW(), NOW())';
    const [rows, fields] = await connection.execute(query, [roleData.name]);
    return rows.insertId;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

async function deleteRoleById(roleId) {
  const connection = await pool.getConnection();

  try {
    const query = 'DELETE FROM roles WHERE id = ?';
    const [rows, fields] = await connection.execute(query, [roleId]);
    return rows.affectedRows > 0;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

module.exports = { getAllRoles, getRoleById, insertNewRole, deleteRoleById };
