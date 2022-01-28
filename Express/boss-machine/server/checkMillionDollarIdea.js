const checkMillionDollarIdea = (req, res, next) => { 
    const {numWeeks, weeklyRevenue} = req.body
 
    let total = Number(numWeeks) * Number(weeklyRevenue)
    if (total < 1000000 || !numWeeks || !weeklyRevenue || isNaN(total)) {
        res.status(400).send()  
    } else {
        next()
    }
};


module.exports = checkMillionDollarIdea;
