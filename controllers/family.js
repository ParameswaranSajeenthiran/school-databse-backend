import { insertNewFather } from "../services/family.js";

export const _insertFarther = async (req, res) => {

    const fatherData = req.body;
    console.log("fatherData" ,fatherData)
    try {
        const insertedId = await insertNewFather(fatherData);
        res.json({ id: insertedId });
    } catch (error) {
        console.log("error" ,error)
        res.status(500).json({ error: error.message });
    }
    }
    