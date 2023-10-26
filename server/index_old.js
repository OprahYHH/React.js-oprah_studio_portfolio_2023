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
    const query = "SELECT * FROM uit2bh3x875n9y2o.projects";
    db.query(query, (err,result) => {
        if (err){
            console.log(err);
        }
        res.send(result);
    })
})

// route to get all current year posts
app.get("/projects/2022", (req,res) => {
    const query = "SELECT * FROM projects WHERE year = '2022'";
    db.query(query, (err,result) => {
        if (err){
            console.log(err);
        }
        res.send(result);
    })
})

// route to get the website posts
app.get("/projects/Website", (req,res) => {
    const query = "SELECT * FROM projects WHERE category = 'Website'";
    db.query(query, (err,result) => {
        if (err){
            console.log(err);
        }
        res.send(result);
    })
})

// route to get the graphic posts
app.get("/projects/Graphic", (req,res) => {
    const query = "SELECT * FROM projects WHERE category = 'Graphic'";
    db.query(query, (err,result) => {
        if (err){
            console.log(err);
        }
        res.send(result);
    })
})

// route to get the app posts
app.get("/projects/APP", (req,res) => {
    const query = "SELECT * FROM projects WHERE category = 'APP'";
    db.query(query, (err,result) => {
        if (err){
            console.log(err);
        }
        res.send(result);
    })
})

// route to get one post
app.get("/projects/:id", (req,res) => {
    const id = req.params.id;
    const query = "SELECT * FROM projects WHERE id = ?";
    db.query(query, id, (err,result) => {
        if (err){
            console.log(err);
        }
        res.send(result);
    })
})

// route to create the post
// app.post('/projects/create', (req,res) => {
//     const id = req.body.id;
//     const name = req.body.name;
//     const client = req.body.client;
//     const info = req.body.info;
//     const year = req.body.year;
//     const image = req.body.image;
//     const image1 = req.body.image1;
//     const image2 = req.body.image2;
//     const image3 = req.body.image3;
//     const demo = req.body.demo;
//     const category = req.body.category;
//     const tags = req.body.tags;
//     db.query("INSERT INTO projects (id,name,client,info,year,image,image1,image2,image3,demo,category) VALUES (?,?,?,?,?,?,?,?,?,?,?)",[id,name,client,info,year,image,image1,image2,image3,demo,category],
//     (err,result) => {
//         if (err){
//             console.log(err);
//         }
//         res.send(result);
//     })
// })

// route to delete a post
app.delete('/projects/:id', (req,res) => {
    const id = req.params.id;
    const query = "DELETE FROM projects WHERE id = ?";
    db.query(query, id, (err,result) => {
        if (err){
            console.log(err);
        }
        res.send(result);
    })
})

app.listen(PORT, () => {
    console.log(`Server is running on ${PORT}`)
})