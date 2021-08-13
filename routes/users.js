import express from 'express';

import { getUsers, postUsers, getUser, deleteUsers, updateUsers} from '../controllers/user.js';

const router = express.Router();



router.get('/', getUsers);

router.post('/', postUsers);

router.get('/:id', getUser);

router.delete('/:id', deleteUsers);

router.patch('/:id', updateUsers);

export default router;
