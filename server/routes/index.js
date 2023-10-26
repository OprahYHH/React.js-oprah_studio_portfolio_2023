import express from "express";

import {
    getAllProjects,
    createProject,
    getProjectById,
    updateProject,
    deleteProjecst
} from "../controllers/Projects";

const router = express.Router();

router.get('/', getAllProjects);
router.get('/:id',getProjectById);
router.post('/',createProject);
router.patch('/:id',updateProject);
router.delete('/:id',deleteProject);

export default router;