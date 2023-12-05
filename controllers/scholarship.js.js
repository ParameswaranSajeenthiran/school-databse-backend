import scholarshipsService from '../services/scholarships.js';

export const getAllScholarships = async (req, res) => {
  try {
    const scholarships = await scholarshipsService.getAllScholarships();
    res.json(scholarships);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const getScholarshipById = async (req, res) => {
  const scholarshipId = req.params.id;
  try {
    const scholarship = await scholarshipsService.getScholarshipById(scholarshipId);
    if (scholarship) {
      res.json(scholarship);
    } else {
      res.status(404).json({ error: 'Scholarship not found' });
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const insertNewScholarship = async (req, res) => {
  const scholarshipData = req.body;
  try {
    const insertedId = await scholarshipsService.insertNewScholarship(scholarshipData);
    res.json({ id: insertedId });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const deleteScholarshipById = async (req, res) => {
  const scholarshipId = req.params.id;
  try {
    const success = await scholarshipsService.deleteScholarshipById(scholarshipId);
    if (success) {
      res.json({ message: 'Scholarship deleted successfully' });
    } else {
      res.status(404).json({ error: 'Scholarship not found' });
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};
