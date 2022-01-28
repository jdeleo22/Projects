const express = require('express');
const app = express();

const { quotes } = require('./data');
const { getRandomElement } = require('./utils');

const PORT = process.env.PORT || 4001;

app.use(express.static('public'));




app.get('/api/quotes/random', (req, res, next) => {
    const randomQuote = getRandomElement(quotes)
    res.send({
        quote: randomQuote
    })
})

app.get('/api/quotes', (req, res, next) => {
    const personParam = req.query.person
    if(personParam){
        const quotesByPerson = quotes.filter(quote => quote.person === req.query.person)
        res.send({
            quotes: quotesByPerson
        })
    }else {
        res.send({
            quotes: quotes
        })
    }

    
})

app.post('/api/quotes', (req, res, next) => {
    const newQuote = req.query
 
    if (newQuote.quote && newQuote.person) {
        quotes.push(newQuote)

        res.send({
            quote: newQuote
        })
    }else {
        res.status(400).send()
    }
})

app.listen(PORT, () => {
    console.log(`Server is listening on ${PORT}`)
})