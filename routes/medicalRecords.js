// medicals.js

import express from 'express';
const router = express.Router();
import { _deleteMedicalById, _getAllMedicals, _getMedicalById, _insertNewMedical } from '../controllers/medical.js';

router.get('/', _getAllMedicals);
router.get('/:id',_getMedicalById);
router.post('/', _insertNewMedical);
router.delete('/:id', _deleteMedicalById);

export default router;
