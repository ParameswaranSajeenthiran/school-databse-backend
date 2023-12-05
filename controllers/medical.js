// medicals.js

import {deleteMedicalById, getAllMedicals, getMedicalById, insertNewMedical }from '../services/medicalRecords.js';

export const _getAllMedicals = async (req, res) => {
  try {
    const medicals = await getAllMedicals();
    res.json(medicals);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const _getMedicalById = async (req, res) => {
  const medicalId = req.params.id;
  try {
    const medical = await getMedicalById(medicalId);
    if (medical) {
      res.json(medical);
    } else {
      res.status(404).json({ error: 'Medical record not found' });
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const _insertNewMedical = async (req, res) => {
  const medicalData = req.body;
  try {
    const insertedId = await insertNewMedical(medicalData);
    res.json({ id: insertedId });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const _deleteMedicalById = async (req, res) => {
  const medicalId = req.params.id;
  try {
    const success = await deleteMedicalById(medicalId);
    if (success) {
      res.json({ message: 'Medical record deleted successfully' });
    } else {
      res.status(404).json({ error: 'Medical record not found' });
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};
