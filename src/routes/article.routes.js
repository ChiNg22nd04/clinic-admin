const express = require('express');
const router = express.Router();
const { getAllArticles } = require('../controllers/article.controller');

router.get('/articles', getAllArticles);

module.exports = router;
