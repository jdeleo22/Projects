const prompt = require('prompt-sync')({sigint: true});





const hat = '^';
const hole = 'O';
const fieldCharacter = '░';
const pathCharacter = '*';

class Field {
    constructor(grid){
        this.grid = grid
        this.charX = 0;
        this.charY = 0;
    }
    

    playGame(){
        //keep iterating while win or lose conditions are met
    let playing = true;

    while(playing){
    this.print();
    this.getInput();

        if(!this.checkBounds()){
            //out of bounds
            console.log('You moved out of bounds, try again next time.')
            playing = false;
            break;
        }else if(this.checkHole()){
            //if it is a hole
            console.log('You fell into a hole, try again next time.')
            playing = false;
            break;
        }else if(this.checkHat()){
            //if you found the hat
            console.log('Congratulations, you found the hat. You Won.')
            playing = false;
            break;
        }
        //move character if no conditions met
        this.grid[this.charX][this.charY] = pathCharacter;

        }
    
    }//playgame

    getInput(){
        const input = prompt('Which way? N for North, E for East, S for South, W for West.');
        
        switch(input.toUpperCase()){
            case 'N': this.charX -= 1;
            break;
            case 'W': this.charY -= 1;
            break;
            case 'E': this.charY += 1;
            break;
            case 'S': this.charX += 1;
            break;
            default: console.log('Enter N, S, W or E.');
            this.getInput();
            break;
        }
    }//getinput

    checkBounds(){
        if (this.charX < 0 || this.charY < 0 || this.charX > this.grid.length-1 || this.charY > this.grid[0].length-1){
            return false;
        }else{
            return true;
        }

    }//checkbounds

    checkHole(){
        if(this.grid[this.charX][this.charY] == hole){
            return true;
        }else{
            return false;
        }
    }//checkhole

    checkHat(){
        if(this.grid[this.charX][this.charY] === hat){
            return true;
        }else{
            return false;
        }
    }//checkhat

    print(){
        for (let row of this.grid){
            console.log(row.join(' '));
            }    
        }//print


    static generateField(height,width,percentage){
    //create field
    let x = 0
    let y = 0;
    let field = [];
        
        for (let i = 0; i < height; i++) {
            field.push([fieldCharacter])
            for (let j = 0; j < width; j++) {
                
                let prob = Math.random();
                if(prob > percentage){
                  field[i][j] = fieldCharacter;
                }else {
                    field[i][j] = hole;
              }
            }
    }
    field[x][y] = pathCharacter;

    //hat placement x and y coords
    let hatX = Math.floor(Math.random() * width);
    let hatY = Math.floor(Math.random() * height);
    while(hatX && hatY != 0){
       field[hatY][hatX] = hat;
       break; 
    }
    
    return field;
}//generatefield 

    checkSolvable(){
    
    }

}//end field class



//main

//generate field
let rand1 = Field.generateField(10,10,.3);
let testField = new Field(rand1);


testField.playGame() 



    //print board                   done
    //ask for user input            done
    //vars to track character       done
    //check if inbounds             done
    // check if hole                done
    // check if hat                 done
    //move character                done

    //expansion possibilities
    /*Have the character start on a random location that’s not the upper-left corner.
Create a “hard mode” where one or more holes are added after certain turns.
Create a field validator to ensure that the field generated can actually be solved. */