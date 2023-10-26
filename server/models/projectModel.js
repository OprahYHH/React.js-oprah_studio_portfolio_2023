import db from "../config/db";
const Sequelize = require('Sequelize')

const { DataTypes } = Sequelize;

const Project = db.define('Projects', {
    id: {
        type: DataTypes.INTEGER, 
        require: true
    },
    name: {
        type: DataTypes.STRING(255),
        require: true
    },
    client: {
        type: DataTypes.STRING(255),
        require: true
    },
    info: {
        type: DataTypes.TEXT,
        require: true
    },
    year: {
        type: DataTypes.INTEGER,
        validate: {
            isInt: true
        }
    },
    image: {
        type: DataTypes.STRING(255),
        require: true
    },
    image1: {
        type: DataTypes.STRING(255)
    },
    image2: {
        type: DataTypes.STRING(255)
    },
    image3: {
        type: DataTypes.STRING(255)
    },
    demo: {
        type: DataTypes.STRING(255)
    },
    category: {
        type: DataTypes.ENUM,
        values: ['Website', 'Graphic', 'APP'],
        require: true
    },
    tags: {
        type: DataTypes.JSON
    }
},{ timestamps: true })

export default Project;