const { createDirectus, rest } = require("@directus/sdk");

const directus = createDirectus(process.env.DIRECTUS_URL).with(rest());

module.exports = directus;
