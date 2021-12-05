//create random situation to survive, roll a random num and see if they survive
//types of messages severity of situation, background of situation,

//optional: fight or run-if you run and fail you lose 20% chance of survival

function generateRandomNumber(num) {
    // Gets # from 0 -> num - 1
    return Math.floor(Math.random() * num)
  }

function rollDice(){
    return generateRandomNumber(20);
}

  
//run sim
function runSim(){

let currentInstance = [];

//create situation obj
  const situation = {
      background: ['dragon','magician'],
      severity: ['weak','normal','dangerous','deadly','impossibly strong'],
      outcome: ['win','lose']
  }

    let roll = rollDice();
  //for each key in situation obj
  for (let key in situation){
    let instanceNum = generateRandomNumber(situation[key].length)
      //if key = 
      switch(key){
          case 'background': 
            currentInstance.push(`You are faced against a ${situation[key][instanceNum]}`)
                break;
          case 'severity':
            currentInstance.push(`After judging their strength, they look ${situation[key][instanceNum]}.`)  
                break;
          case 'outcome':
              if(roll > 10){
                currentInstance.push(`You rolled a ${roll} and have won.`)  
                break;
              }else {
                currentInstance.push(`You rolled a ${roll} and were defeated.`) 
              }
      }
  }
  const formatted = currentInstance.join('\n')
    return formatted;
}//end runSim

console.log(runSim())
