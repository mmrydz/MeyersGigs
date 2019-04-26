module.exports = function(sequelize, DataTypes) {
  var types_info = sequelize.define("types_info", {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      allowNull: false
    },
    personality: {
      type: DataTypes.STRING,
      primaryKey: false,
      allowNull: true
    },
    description: {
      type: DataTypes.STRING,
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
    }
  });

  return types_info;
};
