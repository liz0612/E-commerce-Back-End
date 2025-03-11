// models/category.js
const { DataTypes } = require('sequelize');
const sequelize = require('../config/connection'); // Adjust path as necessary

// Define the Category model
const Category = sequelize.define('Category', {
  name: {
    type: DataTypes.STRING,
    allowNull: false
  }
}, {
  tableName: 'categories', // Ensure this matches your table name in PostgreSQL
});

module.exports = Category;