// staffs.js

import express from 'express';
const router = express.Router();
import staffsController from '../controllers/staffs.js';

router.get('/', staffsController.getAllStaffs);
router.get('/:id', staffsController.getStaffById);
router.post('/', staffsController.insertNewStaff);
router.delete('/:id', staffsController.deleteStaffById);

export default router;
