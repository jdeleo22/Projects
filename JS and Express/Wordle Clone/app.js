const tiles = document.querySelector('.tile-container')
const keyboard = document.querySelector('.keyboard')
const messageDisplay = document.querySelector('.message-container')

let tempWordle

const getWordle = () => {
    fetch('http://localhost:8000/word')
        .then(response => response.json())
        .then(json => {
            console.log(json)
            tempWordle = json.toUpperCase()
        })
        .catch(error => console.log(error))
}

const keys = ['Q', 'W', 'E', 'R', 'T', 'Y', 'U', 'I', 'O', 'P', 'A', 'S', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'ENTER', 'Z', 'X', 'C', 'V', 'B', 'N', 'M', '←']

const guessArray = [
    ['', '', '', '', ''],
    ['', '', '', '', ''],
    ['', '', '', '', ''],
    ['', '', '', '', ''],
    ['', '', '', '', ''],
    ['', '', '', '', '']
]

//start

let currentRow = 0
let currentTile = 0

let gameRunning = true
getWordle()

//guess tiles
guessArray.forEach((guess, guessRowIndex) => {
    const rowElement = document.createElement('div')
    rowElement.setAttribute('id', `guessRow-${guessRowIndex}`)

    guess.forEach((guessLetter, guessIndex) => {
        const tileElement = document.createElement('div')
        tileElement.setAttribute('id', `guessRow-${guessRowIndex}-tile-${guessIndex}`)
        tileElement.classList.add('tile')
        rowElement.append(tileElement)
    })
    tiles.append(rowElement)

})


//Keyboard
keys.forEach(key => {
    const buttonElement = document.createElement('button')
    buttonElement.textContent = key
    buttonElement.setAttribute('id', key)
    buttonElement.addEventListener('click', () => handleClick(key))
    keyboard.append(buttonElement)
})

//keyboard handler
const handleClick = (key) => {
    if (key === '←') {
        deleteLetter()
        return
    }

    if (key === 'ENTER') {
        checkAnswer()
        return
    }

    if (currentTile < 5 && currentRow < 6) {
        addLetter(key)
    }
}

const addLetter = (letter) => {

    const tile = document.getElementById(`guessRow-${currentRow}-tile-${currentTile}`)
    tile.textContent = letter
    guessArray[currentRow][currentTile] = letter
    tile.setAttribute('data', letter)
    currentTile++

}

const deleteLetter = () => {
    if (currentTile > 0) {
        currentTile--
        const tile = document.getElementById(`guessRow-${currentRow}-tile-${currentTile}`)
        tile.textContent = ''
        guessArray[currentRow][currentTile] = ''
        tile.setAttribute('data', '')
    }
}

const checkAnswer = () => {

    const finalGuess = guessArray[currentRow].join('')

    if (currentTile > 4) {
        fetch(`http://localhost:8000/check/?word=${finalGuess}`)
            .then(response => response.json())
            .then(json => {
                console.log(json)

                if (json == 'Entry word not found') {
                    showMessage('Word not in our dictionary')
                } else {
                    flipTile()

                    if (finalGuess == tempWordle) {
                        showMessage('Congratulations')
                        gameRunning = false
                        return
                    } else {
                        if (currentRow >= 5) {
                            gameRunning = false
                            showMessage('Game Over. Try again')
                            return
                        }

                        if (currentRow < 5) {
                            currentRow++
                            currentTile = 0
                        }
                    }
                }
            }).catch(error => console.log(error))
            
    }
}

const showMessage = (message) => {
    const messageElement = document.createElement('p')
    messageElement.textContent = message
    messageDisplay.append(messageElement)

    setTimeout(() => messageDisplay.removeChild(messageElement), 2500)
}

const addColorToKeyboard = (letterValue, color) => {
    const letter = document.getElementById(letterValue)
    letter.classList.add(color)
}

const flipTile = () => {
    const rowTiles = document.getElementById(`guessRow-${currentRow}`).childNodes
    let checkWordle = tempWordle
    const guess = []

    rowTiles.forEach(tile => {
        guess.push({ letter: tile.getAttribute('data'), color: 'grey-overlay' })
    })

    guess.forEach((guess, index) => {
        if (guess.letter == tempWordle[index]) {
            guess.color = 'green-overlay'
            checkWordle = checkWordle.replace(guess.letter, '')
        }
    })

    guess.forEach(guess => {
        if (checkWordle.includes(guess.letter)) {
            guess.color = 'yellow-overlay'
            checkWordle = checkWordle.replace(guess.letter, '')
        }
    })

    rowTiles.forEach((tile, index) => {
        setTimeout(() => {
            tile.classList.add('flip')
            tile.classList.add(guess[index].color)
            addColorToKeyboard(guess[index].letter, guess[index].color)
        }, 500 * index)
    })
}




/*           tile.classList.add('flip')
            //colors
        if (dataVal == tempWordle[index]) {
            tile.classList.add('green-overlay')
            addColorToKeyboard(dataVal, 'green-overlay')
        } else if(tempWordle.includes(dataVal)) {
            tile.classList.add('yellow-overlay')
            addColorToKeyboard(dataVal, 'yellow-overlay')
        }else {
            tile.classList.add('grey-overlay')
            addColorToKeyboard(dataVal, 'grey-overlay')
        } */