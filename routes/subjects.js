// subjects.js

import express from 'express';
const router = express.Router();
import {} from '../controllers/subjects.js';
import { getAllSubjects, getSubjectById, insertNewSubject } from '../services/subjects.js';

router.get('/', getAllSubjects);
router.get('/:id', getSubjectById);
router.post('/', insertNewSubject);
// router.delete('/:id', deleteSubjectById);

export default router;
