module.exports = function(sequelize, DataTypes) {
  var users_info = sequelize.define("users_info", {
    id:  {
      type: DataTypes.INTEGER,
      primaryKey: true,
      allowNull: false,
    },
    uuid: {
      type: DataTypes.UUID,
      defaultValue: DataTypes.UUIDV1,
      primaryKey: false,
      allowNull: false,
    },
    username: {
      type: DataTypes.STRING,
      primaryKey: false,
      allowNull: false,
    },
    firstname: {
      type: DataTypes.STRING,
      primaryKey: false,
      allowNull: false,
    },
    password: {
      type: DataTypes.STRING,
      primaryKey: false,
      allowNull: false,
    },
    personality: {
      type: DataTypes.STRING,
      primaryKey: false,
      allowNull: true,
    },
  },
    {
      indexes: [
          {
              unique: true,
              fields: ['uuid']
          }
      ]
    },
  );

  users_info.associate = function(models) {
    users_info.hasMany(models.surveys_info, {
      onDelete: "cascade"
    });
  };

  return users_info;
};


