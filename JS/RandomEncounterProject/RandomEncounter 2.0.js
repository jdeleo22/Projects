//create random situation to survive, roll a random num and see if they survive
//types of messages severity of situation, background of situation,

//optional: fight or run-if you run and fail you lose 20% chance of survival


function generateRandomNumber(num) {
    return Math.floor(Math.random() * num)
}

function rollDice(){
    return generateRandomNumber(20);
}

function getBackground(situationIn){
    for(let key in situationIn){      
        if(key === 'background'){      
    let bgNum = generateRandomNumber(situationIn[key].length)
    let bG = situationIn[key][bgNum];
    return bG;
        }
    }   
}


function getSeverity(situationIn){
    for(let key in situationIn){      
        if(key === 'severity'){      
            //return both severity and sevNum to correspond to survival chance
    let sevNum = generateRandomNumber(situationIn[key].length)
    let sev = situationIn[key][sevNum];
    return [sev, sevNum];
        }
    }
}

function getSurvivalChance(situationIn,numIn){
    for(let key in situationIn){      
        if(key === 'survivalChance'){      
    let survChance = situationIn[key][numIn];
    return survChance;
        }
    }
}

function getOutcome(situationIn){
    for(let key in situationIn){      
        if(key === 'outcome'){      
    let outcomeNum = generateRandomNumber(situationIn[key].length)
    let outcome = situationIn[key][outcomeNum];
    return outcome;
        }
    }
}

function StartSim(situationIn){
    let instanceBG = getBackground(situationIn);
    let instanceSev = getSeverity(situationIn);
    let survivalChance = getSurvivalChance(situationIn,instanceSev[1]);
    //fight or flight function-expand later
    //let fofRandomRoll = generateRandomNumber(2);
    //let fofRoll =  fofRandomRoll+1;
  /*  if(fofRoll === 1){
      let fof =  'run away'
      return `You are faced against a ${instanceBG}, they look ${instanceSev[0]}. Your survival chance is ${survivalChance}\n
        You roll a ${fofRoll} and attempt to ${fof}`
    }else if(fofRoll === 2){
        let fof = 'fight'
    }*/
    let roll = rollDice();
if (survivalChance === 80 && roll >= 4){
    return `You are faced against a ${instanceBG}, they look ${instanceSev[0]}. Your survival chance is ${survivalChance}%\n
    You roll a ${roll} and are victorious.`
}else if(survivalChance === 70 && roll >= 6){
    return `You are faced against a ${instanceBG}, they look ${instanceSev[0]}. Your survival chance is ${survivalChance}%\n
    You roll a ${roll} and are victorious.`
}else if(survivalChance === 50){
    let outcome = getOutcome(situationIn)
    return `You are faced against a ${instanceBG}, they look ${instanceSev[0]}. Your survival chance is ${survivalChance}%\n
    You take the fight and are ${outcome}.`
}else if(survivalChance === 30 && roll >= 14){
    return `You are faced against a ${instanceBG}, they look ${instanceSev[0]}. Your survival chance is ${survivalChance}%\n
    You roll a ${roll} and are victorious.`
}else if(survivalChance === 20 && roll >= 16){
    return `You are faced against a ${instanceBG}, they look ${instanceSev[0]}. Your survival chance is ${survivalChance}%\n
    You roll a ${roll} and are victorious.`
}else {
    return `You are faced against a ${instanceBG}, they look ${instanceSev[0]}. Your survival chance is ${survivalChance}%\n
    You roll a ${roll} and are defeated.`
}
    
}

/*function fightOrFlight(){
    //const fightOrFlight = prompt("Enter 1 to Fight or 2 to Run");
    if (fightOrFlight === 1){
        console.log(1)
    }else if(fightOrFlight === 2) {
        console.log(2)
    } else {
       console.log(3)
    }
}*/

//create situation obj
const situation = {
    background: ['dragon','magician','troll','elemental'],
    severity: ['fragile','weak','normal','dangerous','deadly','impossibly strong'],
    survivalChance: [80,70,50,40,30,20],
    outcome: ['victorious','defeated']
}

console.log(StartSim(situation))
