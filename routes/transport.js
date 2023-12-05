// transports.js

import express from 'express';
const router = express.Router();
import transportsController from '../controllers/transports.js';

router.get('/', transportsController.getAllTransports);
router.get('/:id', transportsController.getTransportById);
router.post('/', transportsController.insertNewTransport);
router.delete('/:id', transportsController.deleteTransportById);

export default router;
