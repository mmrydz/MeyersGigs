module.exports = function(sequelize, DataTypes) {
  var types_info = sequelize.define("types_info", {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true,
      allowNull: true
    },
    personality: {
      type: DataTypes.STRING,
      primaryKey: false,
      allowNull: true
    },
    description: {
      type: DataTypes.TEXT,
      primaryKey: false,
      allowNull: true
    },
    img_url: {
      type: DataTypes.STRING,
      primaryKey: false,
      allowNull: true
    },
    job_title_1: {
      type: DataTypes.STRING,
      primaryKey: false,
      allowNull: true
    },
    job_title_2: {
      type: DataTypes.STRING,
      primaryKey: false,
      allowNull: true
    },
    job_title_3: {
      type: DataTypes.STRING,
      primaryKey: false,
      allowNull: true
    },
    createdAt: {
      type: DataTypes.DATE,
      defaultValue: sequelize.literal('NOW()'),
    },
    updatedAt: {
      type: DataTypes.DATE,
      defaultValue: sequelize.literal('NOW()'),
    },
  });

  return types_info;
};
