const { Pool } = require('pg');


    const pool = new Pool({
        host: 'localhost',
        user: 'postgres',
        password: 'root',
        database: 'Girl',
        port: 5432,
    });
    
pool.connect()
    .then(() => console.log('✅ PostgreSQL connected successfully'))
    .catch(err => console.error('❌ PostgreSQL connection error:', err));


module.exports = pool;