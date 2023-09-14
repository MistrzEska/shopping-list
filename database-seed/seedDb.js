const seedDatabase = require('./dbSeeder');

seedDatabase().then((result) => {
    console.log('Database seeded successfully!');
}).catch((error) => {
    console.log(error);
});

console.log('Seeding database...');