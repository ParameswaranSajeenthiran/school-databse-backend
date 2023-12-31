import express from 'express';

import studentRouter from './routes/student.js'
import subject from './routes/subjects.js'

import medicalRouter from './routes/medicalRecords.js'

import cookieParser from "cookie-parser";
import cors from 'cors';
import documentsRouter from './routes/documents.js';
import familyRouter from './routes/family.js';



const app = express();
const port = 5000;
app.listen(port, () => console.log(`Example app listening on port ${port}!`));
app.use(express.json());

app.use(cors());


app.use('/student', studentRouter);
app.use('/document', documentsRouter);
app.use('family', familyRouter);
app.use('/medical', medicalRouter);
app.use('/subject', subject);



app.use(cookieParser())


