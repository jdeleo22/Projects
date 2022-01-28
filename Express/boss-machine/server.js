const express = require('express');
const app = express();



module.exports = app;


const PORT = process.env.PORT || 4001;

// Add middleware for handling CORS requests from index.html
const cors = require('cors')
app.use(cors())

// Add middware for parsing request bodies here:
const bodyParser = require('body-parser')
app.use(bodyParser.json())

// Mount your existing apiRouter below at the '/api' path.
const apiRouter = require('./server/api');
app.use('/api', apiRouter)

// Add middleware for logging
const morgan= require('morgan');
app.use(morgan('dev'));



// This conditional is here for testing purposes:
if (!module.parent) { 
  app.listen(PORT, () => {
    console.log(`Server listening on port ${PORT}`)
  })
}
