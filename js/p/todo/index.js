import express, { urlencoded } from "express";
import { fileURLToPath } from 'url';
import { dirname } from 'path';
import fs from "fs";
import path from "path";
import { log } from "console";
const __filename = fileURLToPath(import.meta.url);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
const __dirname = dirname(__filename);
const app = express();
app.use(express.static(path.join(__dirname,"/public")));
app.use(express.json())
app.use(express.urlencoded({extended:true}))
app.set("view engine","ejs");
app.get("/",(req,res)=>{
    
    fs.readFile('./tasks/tasks.txt',{encoding:"utf-8"},(err,filedata)=>{
        if(err){console.log(err)}
        let tasks= filedata.trim().split('\n')
        // console.log(tasks)
        // let regex= new RegExp("\r","g");
        // tasks.forEach(task=>task.replace(regex," "))'
        tasks= tasks.filter( (task) => task.length!==0)
        console.log(tasks)
        res.render("index",{tasks:tasks})
    })
})
app.post("/create",(req,res)=>{
    const newTask= req.body.taskinput;
    fs.appendFile('./tasks/tasks.txt','\n'+ newTask+'\r',{encoding:"utf-8"},(err)=>{console.log(err)})
    res.redirect("/");
})
app.get("/delete/:taskToBeDeleted",(req,res)=>{
    var taskToBeDeleted = req.params.taskToBeDeleted;
    fs.readFile('./tasks/tasks.txt',{encoding:"utf-8"},(err,filedata)=>{
        if(err){console.log(err)}
        let tasks= filedata.split('\n')
        let regex= new RegExp("%20","g");
        taskToBeDeleted = taskToBeDeleted.replace(regex," ");

        // let updatedTasks= tasks.filter( task => task!=taskToBeDeleted)
        // console.log(tasks)
        // console.log(updatedTasks)
        console.log(tasks)
        let taskIndex = tasks.indexOf(taskToBeDeleted+"\r");
        console.log(taskIndex)
        if (taskIndex>-1){ tasks.splice(taskIndex,1)}
        console.log(tasks)
        fs.writeFile('./tasks/tasks.txt',tasks.join('\n'),{encoding:"utf-8"},(err)=>{
            if(err)console.log(err)
                res.redirect("/");
            })
    
    })
})

app.listen(3005,()=>{console.log("Site is up and running")})