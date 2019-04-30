// "use strict";
// module.exports = {
//   up: (queryInterface, Sequelize) => {
//     return queryInterface.createTable(
//       "Users",
//       {
//         id: {
//           allowNull: false,
//           autoIncrement: true,
//           primaryKey: true,
//           type: Sequelize.INTEGER
//         },
//         username: {
//           type: Sequelize.STRING
//         },
//         password: {
//           type: Sequelize.STRING
//         },
//         personality: {
//           type: Sequelize.STRING
//         },
//         createdAt: {
//           allowNull: false,
//           type: Sequelize.DATE
//         },
//         updatedAt: {
//           allowNull: false,
//           type: Sequelize.DATE
//         }
//       },
//       { engine: "InnoDB", charset: "utf8", timestamps: false }
//     );
//   },
//   down: (queryInterface, Sequelize) => {
//     return queryInterface.dropTable("Users");
//   }
// };
