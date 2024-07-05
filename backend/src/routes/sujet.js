const router = require('express').Router();

const {createSujet} = require('../controller/sujet')

// router.get('/',getAllSujet);
// router.get('/:id',getSujetById);

router.post('/',createSujet);


module.exports = router;