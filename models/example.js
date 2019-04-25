// From the initial setup
// module.exports = function(sequelize, DataTypes) {
//   var Example = sequelize.define("Example", {
//     text: DataTypes.STRING,
//     description: DataTypes.TEXT
//   });
//   return Example;
// };


module.exports = function(sequelize, DataTypes) {
  var users_info = sequelize.define("users_info", {
    id:  {
      type: DataTypes.INT,
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
  });
  return users_info;
};

