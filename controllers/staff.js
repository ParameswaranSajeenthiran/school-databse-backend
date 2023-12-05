// staffs.js

import staffsService from '../services/staffs.js';

export const getAllStaffs = async (req, res) => {
  try {
    const staffs = await staffsService.getAllStaffs();
    res.json(staffs);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const getStaffById = async (req, res) => {
  const staffId = req.params.id;
  try {
    const staff = await staffsService.getStaffById(staffId);
    if (staff) {
      res.json(staff);
    } else {
      res.status(404).json({ error: 'Staff not found' });
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const insertNewStaff = async (req, res) => {
  const staffData = req.body;
  try {
    const insertedId = await staffsService.insertNewStaff(staffData);
    res.json({ id: insertedId });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const deleteStaffById = async (req, res) => {
  const staffId = req.params.id;
  try {
    const success = await staffsService.deleteStaffById(staffId);
    if (success) {
      res.json({ message: 'Staff deleted successfully' });
    } else {
      res.status(404).json({ error: 'Staff not found' });
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};
