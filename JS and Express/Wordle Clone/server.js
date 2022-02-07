const PORT = 8000
const express = require('express')
const app = express()
var axios = require("axios").default
require('dotenv').config()
const cors = require('cors')

app.use(cors())

app.get('/word', (req, res) => {

var options = {
  method: 'GET',
  url: 'https://random-words5.p.rapidapi.com/getMultipleRandom',
  params: {count: '5', wordLength: '5'},
  headers: {
    'x-rapidapi-host': 'random-words5.p.rapidapi.com',
    'x-rapidapi-key': process.env.RAPID_API_KEY
  }
};

axios.request(options).then(function (response) {
	console.log(response.data)
    res.json(response.data[0])
}).catch(function (error) {
	console.error(error)
})

})


app.get('/check', (req, res) => {

let wordle = req.query.word

var options = {
  method: 'GET',
  url: 'https://twinword-word-graph-dictionary.p.rapidapi.com/association/',
  params: {entry: wordle},
  headers: {
    'x-rapidapi-host': 'twinword-word-graph-dictionary.p.rapidapi.com',
    'x-rapidapi-key': process.env.RAPID_API_KEY
  }
}

axios.request(options).then(function (response) {
	console.log(response.data)
    res.json(response.data.result_msg)
}).catch(function (error) {
	console.error(error)
})

})


app.listen(PORT, () => {
    console.log(`Server running on ${PORT}`)
})

