import express from "express"

const app = express()


app.listen(3000, (res, req)=>{
    console.log("escuchando puerto 3000")
})