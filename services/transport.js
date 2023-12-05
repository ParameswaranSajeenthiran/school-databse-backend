// transports.js

const mysql = require('mysql2/promise');

const pool = mysql.createPool({
  host: 'your_database_host',
  user: 'your_database_user',
  password: 'your_database_password',
  database: 'school',
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0
});

async function getAllTransports() {
  const connection = await pool.getConnection();

  try {
    const [rows, fields] = await connection.execute('SELECT * FROM transports');
    return rows;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

async function getTransportById(transportId) {
  const connection = await pool.getConnection();

  try {
    const [rows, fields] = await connection.execute('SELECT * FROM transports WHERE id = ?', [transportId]);
    return rows[0];
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

async function insertNewTransport(transportData) {
  const connection = await pool.getConnection();

  try {
    const query =
      'INSERT INTO transports (comming, leaving, createdAt, updatedAt) ' +
      'VALUES (?, ?, NOW(), NOW())';

    const [rows, fields] = await connection.execute(query, [
      transportData.comming,
      transportData.leaving
    ]);

    return rows.insertId;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

async function deleteTransportById(transportId) {
  const connection = await pool.getConnection();

  try {
    const query = 'DELETE FROM transports WHERE id = ?';
    const [rows, fields] = await connection.execute(query, [transportId]);
    return rows.affectedRows > 0;
  } catch (error) {
    throw error;
  } finally {
    connection.release();
  }
}

module.exports = { getAllTransports, getTransportById, insertNewTransport, deleteTransportById };
