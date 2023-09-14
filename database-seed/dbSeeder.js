const seedScripts = require('./loadSeedDbScripts');
const sql = require('mssql');

const dbConfig = {
    user: 'sa',
    password: '19122007Rr',
    server: 'localhost',
    database: 'master',
    options: {
        trustedConnection: true,
        encrypt: true,
        enableArithAbort: true,
        trustServerCertificate: true,
    }
}

const seedDatabase = async () => {
    let pool = null;
    try {
        
        //let pool = await sql.connect('mssql://sa:Password123@localhost,1433/shopping-list');
        pool = await sql.connect(dbConfig);

        await pool.request().query(seedScripts.loadCreateDatabaseScript());

        //const createSchemaResult = await pool.request().query(seedScripts.loadCreateSchemaScript());
        await pool.request().query(seedScripts.loadCreateSchemaScript());
        //console.log(createSchemaResult.recordset);

        //const seedDataResult = await pool.request().query(seedScripts.loadSeedDataScript());
        await pool.request().query(seedScripts.loadSeedDataScript());
        //console.log(seedDataResult.recordset);
    } catch (error) {
        throw new Error(error);
    } finally {
        try {
            await pool.close();

            pool = null;
        } catch (err) {
            pool = null;
            console.log(err);
        }
    }
}

module.exports = seedDatabase;