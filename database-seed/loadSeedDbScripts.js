const fs = require('fs-extra');
const { join } = require('path');
const sql = require('mssql');

const loadCreateDatabaseScript = () => {
    const filePath = join(__dirname, 'shopping-list-sql', 'createDatabase.sql');
    const query = fs.readFileSync(filePath, { encoding: 'utf-8' });

    return query;
};

const loadCreateSchemaScript = () => {
    const filePath = join(__dirname, 'shopping-list-sql', 'schema.sql');
    const query = fs.readFileSync(filePath, { encoding: 'utf-8' });

    return query;
};

const loadSeedDataScript = () => {
    const filePath = join(__dirname, 'shopping-list-sql', 'data.sql');
    const query = fs.readFileSync(filePath, { encoding: 'utf-8' });

    return query;
};

module.exports = {
    loadCreateDatabaseScript,
    loadCreateSchemaScript,
    loadSeedDataScript
};