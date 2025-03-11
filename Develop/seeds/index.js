// seeds/index.js
require('dotenv').config();
const sequelize = require('../config/connection'); // Path to your sequelize connection
const Category = require('../models/Category'); // Path to your Category model

const seedData = async () => {
  try {
    // Sync the models (this ensures the tables exist)
    await sequelize.sync({ force: true });  // Will drop and recreate tables

    // Seed Categories
    await Category.bulkCreate([
      { name: 'Electronics' },
      { name: 'Books' },
      { name: 'Clothing' }
    ]);

    console.log('Categories have been seeded.');
  } catch (error) {
    console.error('Error seeding data:', error);
  }
};

// Call the seed function
seedData();