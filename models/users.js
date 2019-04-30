"use strict";
module.exports = (sequelize, DataTypes) => {
  const Users = sequelize.define(
    "Users",
    {
      id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        autoIncrement: true,
        primaryKey: true
      },
      username: DataTypes.STRING,
      password: DataTypes.STRING,
      personality: DataTypes.STRING
    },
    { timestamps: false }
  );
  Users.associate = function(models) {
    // associations can be defined here
  };
  return Users;
};
