

//create calc class for functions 
class Calc{
    constructor(currentOpTxt,previousOpTxt){
        this.currentOpTxt = currentOpTxt;
        this.previousOpTxt = previousOpTxt;
        this.clear();
    }

    //clear all numbers
    clear(){
        this.currentOp = '';
        this.previousOp = '';
        this.operation = undefined;

    }

    //delete last number
    delete(){
    this.currentOp = this.currentOp.toString().slice(0, -1)
    }

    //take selected number add to current text element
    numberString(number){
        if(number === '.' && this.currentOp.includes('.')){
            return
        }
    this.currentOp = this.currentOp.toString() + number.toString();
    }

    //take previous selected number and store , take operand
    getOperation(operation){
        //check if there is a value to store
        if(this.currentOp === ''){
            return
        }
        //if there is already a number stored, compute first
        if(this.previousOp !== ''){
            this.calculate();
        }

        this.operation = operation
        this.previousOp = this.currentOp;
        this.currentOp = '';
    }

    
    calculate(){
        //cast to float to catch
        let result
        let prevInput = parseFloat(this.previousOp);
        let currentInput = parseFloat(this.currentOp);
        //if either input is nan
        if(isNaN(currentInput) || isNaN(prevInput)){
            return;
        }

        switch(this.operation){
            case '+':   result = prevInput + currentInput
                break;
            case '-':   result = prevInput - currentInput
                break;
            case '*':   result = prevInput * currentInput
                break;
            case '÷':   result = prevInput / currentInput
                break;
            default: return;
        }
        //store result and reset op and previous input
        this.currentOp = result
        this.operation = undefined
        this.previousOp = '';
    }

    getDisplayNum(num){
        //catch decimal before integer input
        //catch adding zero after decimal
        const stringNum = num.toString()
        const intDigits = parseFloat(stringNum.split('.')[0])
        const decDigits = stringNum.split('.')[1];
        let intDisplay
        if (isNaN(intDigits)){
            intDisplay = ''
        }else {
            intDisplay = intDigits.toLocaleString('en', {
                maximumFractionDigits: 0
            })
        }
        
        if(decDigits != null){
            return `${intDisplay}.${decDigits}`
        }else{
            return intDisplay;
        }


        /*const floatNum = parseFloat(num);
        if(isNaN(floatNum)){
            return
        }
        return floatNum.toLocaleString('en');*/
    }

    update(){
        this.currentOpTxt.innerText = this.getDisplayNum(this.currentOp);

        if(this.operation != null){
            this.previousOpTxt.innerText = `${this.getDisplayNum(this.previousOp)} ${this.operation}`;
        }else{
            this.previousOpTxt.innerText = '';
        }
    }

}

//collect data from html
const btnNumbers = document.querySelectorAll('[data-num]')
const btnOperations = document.querySelectorAll('[data-op]')
const btnEquals = document.querySelector('[data-equals]')
const btnDelete = document.querySelector('[data-del]')
const btnClear = document.querySelector('[data-clear]')
const currentOpTxt = document.querySelector('[data-curr-op]')
const previousOpTxt = document.querySelector('[data-prev-op]')



const calc1 = new Calc(previousOpTxt,currentOpTxt);


//add event listener to each number btn
//on click take val of text element and call update
btnNumbers.forEach(btn => {
    btn.addEventListener('click', () => {
        calc1.numberString(btn.innerText)
        calc1.update()
    })
})
btnOperations.forEach(btn => {
    btn.addEventListener('click', () => {
        calc1.getOperation(btn.innerText)
        calc1.update()
    })
})

btnEquals.addEventListener('click', () => {
    calc1.calculate();
    calc1.update();
})
btnClear.addEventListener('click', () => {
    calc1.clear();
    calc1.update();
})
btnDelete.addEventListener('click', () => {
    calc1.delete();
    calc1.update();
})