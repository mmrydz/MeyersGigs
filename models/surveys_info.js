module.exports = function(sequelize, DataTypes) {
  var surveys_info = sequelize.define("surveys_info", {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      allowNull: false
    },
    q1: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q2: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q3: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q4: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q5: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q6: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q7: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q8: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q9: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q10: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q11: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q12: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q13: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q14: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q15: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q16: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q17: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q18: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q19: {
      type: DataTypes.INTEGER,
      primaryKey: false,
      allowNull: true
    },
    q20: {
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

// From the initial setup
// module.exports = function(sequelize, DataTypes) {
//   var Example = sequelize.define("Example", {
//     text: DataTypes.STRING,
//     description: DataTypes.TEXT
//   });
//   return Example;
// };
