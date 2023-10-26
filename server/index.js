const express = require('express');
const cors = require('cors');
const db = require('./config/db');

const app = express();
const PORT = process.env.PORT || 5000;

app.use(cors());
app.use(express.json());

// message for connected database
db.connect(function(err) {
    if (err) {
        return console.error('error: ' + err.message);
    }
    console.log('MySQL database connected.');
})

// route to get all posts 
app.get("/projects", (req,res) => {
    const query = "SELECT * FROM oprahstudiodb_react.project P LEFT JOIN project_category PC ON P.project_id = PC.p_id LEFT JOIN category C ON PC.c_id = C.category_id ORDER BY project_id";
    db.query(query, (err,result) => {
        if (err) console.log(err);
        res.send(result);
    })
})

app.get("/projects/all", (req,res) => {
    const query = "SELECT * FROM oprahstudiodb_react.project P LEFT JOIN project_category PC ON P.project_id = PC.p_id LEFT JOIN category C ON PC.c_id = C.category_id ORDER BY project_id";
    db.query(query, (err,result) => {
        if (err) console.log(err);
        res.send(result);
    })
})

app.get("/projects/tags/:id", (req,res) => {
    const id = req.params.id;
    const query = "SELECT * FROM oprahstudiodb_react.project_tags PT LEFT JOIN tags T ON T.tag_id = PT.t_id WHERE p_id = ?";
    db.query(query, id, (err,result) => {
        if (err) console.log(err);
        res.send(result);
    })
})

// route to get all current year posts
app.get("/projects/2022", (req,res) => {
    const query = "SELECT * FROM oprahstudiodb_react.project P LEFT JOIN project_category PC ON P.project_id = PC.p_id LEFT JOIN category C ON PC.c_id = C.category_id WHERE year = 2022";
    db.query(query, (err,result) => {
        if (err) console.log(err);
        res.send(result);
    })
})

// route to get the website posts
app.get("/projects/website", (req,res) => {
    const query = "SELECT * FROM oprahstudiodb_react.project P LEFT JOIN project_category PC ON P.project_id = PC.p_id LEFT JOIN category C ON PC.c_id = C.category_id WHERE c_id = 1 ORDER BY project_id;";
    db.query(query, (err,result) => {
        if (err) console.log(err);
        res.send(result);
    })
})

// route to get the graphic posts
app.get("/projects/graphic", (req,res) => {
    const query = "SELECT * FROM oprahstudiodb_react.project P LEFT JOIN project_category PC ON P.project_id = PC.p_id LEFT JOIN category C ON PC.c_id = C.category_id WHERE c_id = 2 ORDER BY project_id;";
    db.query(query, (err,result) => {
        if (err) console.log(err);
        res.send(result);
    })
})

// route to get the app posts
app.get("/projects/app", (req,res) => {
    const query = "SELECT * FROM oprahstudiodb_react.project P LEFT JOIN project_category PC ON P.project_id = PC.p_id LEFT JOIN category C ON PC.c_id = C.category_id WHERE c_id = 4 ORDER BY project_id;";
    db.query(query, (err,result) => {
        if (err) console.log(err);
        res.send(result);
    })
})

// route to get one post
app.get("/projects/:id", (req,res) => {
    const id = req.params.id;
    const query = "SELECT * FROM oprahstudiodb_react.project P LEFT JOIN project_category PC ON P.project_id = PC.p_id LEFT JOIN category C ON PC.c_id = C.category_id WHERE P.project_id = ?";
    db.query(query, id, (err,result) => {
        if (err) console.log(err);
        res.send(result);
    })
})

// route to delete a post
app.delete('/projects/:id', (req,res) => {
    const id = req.params.id;
    const query = "DELETE FROM oprahstudiodb_react.project WHERE project_id = ?";
    db.query(query, id, (err,result) => {
        if (err) console.log(err);
        res.send(result);
    })
})

app.listen(PORT, () => {
    console.log(`Server is running on ${PORT}`)
})