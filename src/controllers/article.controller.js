const directus = require("../services/directus");

const getAllArticles = async (req, res) => {
    try {
        const articles = await directus.items("Articles").readByQuery({
            fields: ["article_id", "title", "content", "author", "published_date", "category", "record.id", "record.filename_download"],
        });
        res.status(200).json({ success: true, data: articles.data });
    } catch (error) {
        console.error(error);
        res.status(500).json({ success: false, message: "Server error" });
    }
};

module.exports = { getAllArticles };
