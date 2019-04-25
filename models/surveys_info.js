module.exports = function(sequelize, DataTypes) {
    var surveys_info = sequelize.define("surveys_info", {
      id:  {
        type: DataTypes.INT,
        primaryKey: true,
        allowNull: false,
      },
      uuid: {
        type: DataTypes.UUID,
        defaultValue: DataTypes.UUIDV1,
        references: 'users_info',
        referencesKey: 'uuid',
        primaryKey: false,
        allowNull: false,
      },
      q1: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q2: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q3: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q4: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q5: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q6: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q7: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q8: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q9: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q10: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q11: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q12: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q13: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q14: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q15: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q16: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q17: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q18: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q19: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
      q20: {
        type: DataTypes.INT,
        primaryKey: false,
        allowNull: true,
      },
    });
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
  