// subjects.js

import { getAllSubjects, getSubjectById, insertNewSubject } from '../services/subjects.js';

export const _getAllSubjects = async (req, res) => {
  try {
    const subjects = await getAllSubjects();
    res.json(subjects);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const _getSubjectById = async (req, res) => {
  const subjectId = req.params.id;
  try {
    const subject = await getSubjectById(subjectId);
    if (subject) {
      res.json(subject);
    } else {
      res.status(404).json({ error: 'Subject not found' });
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const _insertNewSubject = async (req, res) => {
  const subjectData = req.body;
  try {
    const insertedId = await insertNewSubject(subjectData);
    res.json({ id: insertedId });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

// export const deleteSubjectById = async (req, res) => {
//   const subjectId = req.params.id;
//   try {
//     const success = await subjectsService.deleteSubjectById(subjectId);
//     if (success) {
//       res.json({ message: 'Subject deleted successfully' });
//     } else {
//       res.status(404).json({ error: 'Subject not found' });
//     }
//   } catch (error) {
//     res.status(500).json({ error: error.message });
//   }
// };
