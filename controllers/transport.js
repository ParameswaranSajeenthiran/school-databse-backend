// transports.js

import transportsService from '../services/transports.js';

export const getAllTransports = async (req, res) => {
  try {
    const transports = await transportsService.getAllTransports();
    res.json(transports);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const getTransportById = async (req, res) => {
  const transportId = req.params.id;
  try {
    const transport = await transportsService.getTransportById(transportId);
    if (transport) {
      res.json(transport);
    } else {
      res.status(404).json({ error: 'Transport not found' });
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const insertNewTransport = async (req, res) => {
  const transportData = req.body;
  try {
    const insertedId = await transportsService.insertNewTransport(transportData);
    res.json({ id: insertedId });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};

export const deleteTransportById = async (req, res) => {
  const transportId = req.params.id;
  try {
    const success = await transportsService.deleteTransportById(transportId);
    if (success) {
      res.json({ message: 'Transport deleted successfully' });
    } else {
      res.status(404).json({ error: 'Transport not found' });
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
};
