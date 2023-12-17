import express from "express";
import { _insertFarther } from "../controllers/family.js";



var familyRouter = express.Router();

// post
familyRouter.post('/farther', async (req, res) => {
    console.log("req body",  req.body);
    const result = await _insertFarther(req.body.fatherData);

    res.send(result);
}
);

export default familyRouter;


