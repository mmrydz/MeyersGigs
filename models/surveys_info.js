module.exports = function(sequelize, DataTypes) {
  var surveys_info = sequelize.define("surveys_info", {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      allowNull: false
    },
    quest1: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest2: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest3: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest4: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest5: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest6: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest7: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest8: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest9: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest10: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest11: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest12: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest13: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest14: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest15: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest16: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest17: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest18: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest19: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    quest20: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    }
  });

  surveys_info.associate = function(models) {
    surveys_info.belongsTo(models.users_info, {
      foreignKey: {
        allowNull: false
      }
    });
  };

  return surveys_info;
};
