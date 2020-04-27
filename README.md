

---

# README


# ♣ 📜 **About The project 🤔**
---
####  💁🏻 What is it❓

 🗣A simple terminal interface that will let the user play the classic tic-tac-toe against a computer named "Bot". 
 
 
 :pushpin: **info: Source of Definition**
 ![](https://i.imgur.com/NMe8gOd.png)

####  💁🏻 What is the purpose of this project❓

🗣 To give fun experience using the terminal interface while playing the game.
####  💁🏻 How it works❓

🗣 
**HOW TO INSTALL ⬇**
   ---
* Open terminal on computer. 💻🖥
* The prerequisite of this project is to have `ruby` installed on the computer. 
* If `ruby` is not installed go to this link to find instructions of how to install ruby.
 
 🔗 ***LINK FOR RUBY INSTALLATION FOR DIFFERENT OPERATING SYSTEM***
https://www.ruby-lang.org/en/documentation/installation/?fbclid=IwAR1MkBp39ufIWmZHksBjWN3kCE7aYFI3Z17gBpFNSsbiovHFaV2SwpXj6yY

* Run `git clone git@github.com:ismatfarjana/T1A2_Terminal_app.git` 
* Navigate to the file by entering `cd 
T1A2_Terminal_app/src` 
* Run `bundle install` to install all the `gem`
* Run the file by typing in this pattern `ruby tic_tac_toe.rb <number of rounds>`
* `<number of rounds>` is the number of **total round** user wants to play the game.

* **Users sign ❎** is hard coded for the simplicity of the game. Opponent **Bot** will be holding ⭕ sign.
* User needs to **choose** one number from **1** to **9** and hit **enter** button.
 

####  💁🏻 What user is going to experience through the process of the project❓

🗣 **USER EXPERIENCE ✌**
---
* Hitting the enter button will show a **WELCOME** 💐 message and and the program will ask users **name**.😎

* After entering a number each time, **Bot** will take turn and this circle will go on `loop` 🔄 until the **number of round** is finished.

* After each round name of the **winner** 👑 will be shown.
* After finishing all rounds **Leaderboard** 🏁 will appear which will show if there is a **WINNER** 🎉 or it is a **DRAW** 👻

---

# ♣ **Development story**📓🔨

### **♣:memo: List of ideas**  
---
*💡= idea, 🔵= description,  🍎= reason for not selecting, 🍏= reason for selecting*

#### 💡  Barefoot calculator 💸💰💲
🔵It is a terminal application inspired by the book "The barefoot investor" by Scott Pape.

🍎Does not have that much complexity that this project requires. It only takes one integer as input and does a few simple calculations, sends money management plans, mainly a string based app.

#### 💡  Tic-Tac-Toe ✅ **Final project  :rocket:**
🔵 Tic-tac-toe is a game where two players take turns to complete a row, a column, or a diagonal with either three O's or three X's drawn in the spaces of a grid of nine squares; noughts and crosses.

🍏 The time frame and the challenge of this seemed perfect if properly done. So I choose this classic game.

#### Other Ideas
Other application ideas were considered (such as: a BMI calculator 💪, Snakes and Ladders :snake: 🎲, Sudoku etc) but were abandoned due to complexity and time constraints
 
---
# **♣ Short walk through the project 🍰**
 Let's have a quick ride 
 
 <details>
<summary> Click to expand!</summary>
#### 🖼️ 💁 Running the app with `ruby <filename> <number of round> `

:pushpin: 
![](https://i.imgur.com/AKUNHwL.png)

#### 🖼️ 💁 Returning **WELCOME** message with a question asking the users name. 
:pushpin: 
![](https://i.imgur.com/dPcWyuC.png)


#### 🖼️ 💁The program shows the hard coded sign chosen for each player: 
**USER(⛹️) Vs Bot(🤖)**
:pushpin: 
![](https://i.imgur.com/nHoaUsQ.png)


####  🖼️ 💁Empty board shows up with a instruction for choosing the place and entering one number from 1 to 9
:pushpin: 
![](https://i.imgur.com/gjjFxYv.png)
#### 🖼️  💁Shows both players chosen number
:pushpin: 
![](https://i.imgur.com/0IF5qXs.png)

#### 🖼️ 💁Shows the board with placed sign, asks for another number 
:pushpin: 
![](https://i.imgur.com/2qBFYDY.png)

#### 🖼️ 💁Play goes on until one of the participants wins the round.After that 🏅winner's name for the corresponding round is published.

:pushpin: 
![](https://i.imgur.com/gyomHve.png)

#### 🖼️ 💁After finishing total round, 🏁Leaderboard🏁 is published with the name and scores of both players and the *GAME OVER* note is showed 🏆
(total round == number of rounds entered with the file name  while running the project)
:pushpin: 
![](https://i.imgur.com/Y71iV44.png)


#### 🖼️ 💁User is asked if he/she wants to play another round or not ❓
:pushpin: 
![](https://i.imgur.com/wKzlrCg.png)


#### 🖼️ 💁If no the program stops running with a Thank you message at the end 🌹
:pushpin: 
![](https://i.imgur.com/L8pneFG.png)


</details>




# **♣ Edge cases**

<details>
<summary>Click to expand!</summary>


## 🕹
#### If `<number of rounds>` is not given as an argument while running the app , the number of rounds will be asked again.
Game will not start until valid argument is passed 🚫
**In this case argument passed on must be an `Integer`**
:round_pushpin: 
![](https://i.imgur.com/asaMC3J.png)

#### Once the right valid argument is passed, the game will start with the WELCOME 💐 message :pancakes: 

 **♣ CHECK FOR INPUT DATA TYPE**
- [x] Value greater than `0`
- [x] Not a `string`
- [x] Not a `boolean`


## 🕹
#### While choosing the places, if player enter any place number which is already taken request for choosing another available place number will show up until the number place is **available/ valid input**
:round_pushpin: 
![](https://i.imgur.com/9cwzs99.png)

#### Game will run smoothly after valid input is given 🚄

 **♣ CHECK FOR INPUT DATA TYPE**
 - [x] Value greater then `0` & less then `10`
- [x] Not a `string`
- [x] Not a `boolean`
</details>


 



---




# ♣ THE GAME FLOW AT A GLANCE 
🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸 
![](https://i.imgur.com/yVkZhfV.png)

🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸 
---


# ♣  **Project management plan  🚧**
> day to day work with terminal screen shots and trello

<details>
<summary>Click to expand!</summary>

### **DAY 1 (20 April) 😎**

- [x] The Assessment was published.
- [x] Thinking and narrowing down my ideas of projects.
- [x] Learn about trello and how to use it.
- [x] Built my first trello board. 
- [x] Added few lists and cards

![](https://i.imgur.com/factNnR.jpg)

- [x] Listed my ideas in one card

![](https://i.imgur.com/Q88WEyH.jpg)


### **DAY 2 (21 April) 🧐**

- [x] Finalized idea tic-tac-toe. 
- [x] Scratched a game flowchart to make it reasonably working

![](https://i.imgur.com/vrt6gSS.png)


### **DAY 3 (22 April) 🧐**

- [x] According to the requirements of the assessment created an empty directory and a github repository.

![](https://i.imgur.com/aK1i9XV.png)

- [x] Created README file to start writing down 

![](https://i.imgur.com/2Z6HjUD.png)

- [x] Created new branch in github for player

![](https://i.imgur.com/QEEo80r.png)

- [x] Added  rspec Gemfile

![](https://i.imgur.com/sfzBvvb.png)

- [x] Created Scratch game board

![](https://i.imgur.com/DqdTRMn.png)

![](https://i.imgur.com/i28qN8j.png)


### **DAY 4 (23 April) 🧐**

- [x] Keep updating my planning and keeping record of it in trello.
- [x] Created different branches and wrote code for each features:
> player class and tests : Model
> leaderboard class and tests : Model
> operator class : View and Controller
> board class and tests : Model
> game class and tests : Model
> place class and tests : Model
> tic_tac_toe.rb file : View and Controller


![](https://i.imgur.com/Y6RYEAz.jpg)

- [x] Feature includes
> methods according to requirements
> tests for methods

![](https://i.imgur.com/CBRBqT2.jpg)

- [x] Gem installed

![](https://i.imgur.com/xKmY4vM.png)

- [x] Add developer log to trello.

![](https://i.imgur.com/G3QF61q.jpg)


### **DAY 5 (24 April) 🤓**

- [x] Created a colorful welcome message using [https://fsymbols.com/emoji/](https://) and `lolcat` gem

![](https://i.imgur.com/SrBURiZ.png)

- [x] Keep modifying my trello board with information.

![](https://i.imgur.com/n7QMSsJ.jpg)

- [x] Improved code to run the game for the first time to check if it works as expected. At this point it was supposed to take signs from the user and place it on the board.

![](https://i.imgur.com/S3S63PA.png)

- [x] Added loop to finish the round and show the result

![](https://i.imgur.com/sYnK2Mf.png)


### **DAY 6 (25 April) 😅**

- [x] Improving code to fix the errors.Like, for the last place I couldn't enter the place number because it was returning an empty string. FIXED IT.

![](https://i.imgur.com/0pepbTP.png)

- [x] Keep fixing the open ends of my game, all information is in my trello board and files are available in my github repository.

![](https://i.imgur.com/z3sHAqZ.jpg)


### **DAY 7 (26 April) 😅**

- [x] Made presentation file, finished readme file.

![](https://i.imgur.com/UTjR1GT.jpg)

- [x] Total 9 branches added to github

![](https://i.imgur.com/vT8Hm3h.png)


![](https://i.imgur.com/QMegpRi.png)

updated trello

![](https://i.imgur.com/MyYd4qQ.jpg)

</details>

---


[**Github link**](https://github.com/ismatfarjana/T1A2_Terminal_app)
[**Trello link**](https://trello.com/invite/b/VOiw1zfE/c063a538e570dbca0f034cb9d0aa836c/termnalapp-tic-tac-toe/)
[**Lucid chart**](https://www.lucidchart.com/invitations/accept/1f045cbe-8d17-4de9-a375-5b8d76e5260d/)
---
# ♣ **Testing and Bug fixing** 🐛🐞🔫

## ♠ Unit Test

## Player

- Added unit tests to test player's name, sign and scores to be persisted and updated during a game.
- Tested player's scores start with 0.

## Game

- Added unit tests to test Game to provide a number of rounds left to finish the game and update rounds when players finish a round.

## Place

- Added unit tests to test place position and sign on the board.

## Board

- Added unit tests to test that board has enough places.
- Tested that board can place player sign when a player choose a place
- Tested that the board can calculate the winning pattern when a player has one.


## Leaderboard

- Added unit tests to test leaderboard returns sorted players list based on their scores.
- Tested that the leaderboard returns the winner's name.
- Tested that leaderboard returns a winner when there is a winner.

## ♠ Manual test



| Feature | Description | Expected Outcome | Actual Outcome | Note |
| -------- | -------- | -------- | -------- | -------- |
| Welcome screen    | The name of the game    | The name of game with emojis and fancy fonts     | As expected    |  fancy fonts created by using [fsymbols](//fsymbols.com/generators//)    |
| Number of rounds ➡ given while running the app | Welcome message | Customized welcome message for user | As expected | n/a |
| Number of rounds ➡ not given while running the app | Request for entering the number of rounds | Holding the game on pause until valid input is given | As expected | number of round must be `>= 0` |
| Choose a place on the board | Enter the number for placing sign on the board | To mark that place on the board with users sign | As expected | number for place must be `1<= number <= 9` |
| Place availability | Checks if given number place is available or not | Holds the game on pause and asks to choose valid input | As expected |  Coosen numbered must be available on board  |
| Detecting Round winner | Finds out the winner for corresponding round if it is not a Draw | Announcement of winners name or Draw | As expected | n/a |
|  Displaying leaderboard | Display the name of players with overall scores | Table with players name and scores inside it | As expected | n/a |
| Detecting game winner | Finding out the name of the winner | Announcement of the name of the winner | As expected | If the game is a Draw, Draw announcemnet is shown |
| Game over | Game over message shown | Game over message with fancy font | As expected | n/a |
| Restart game | Options given to restart the game or not  | Asks if player wants to restart the game | Restarts the game | option y to restart the game |
| Quit game | Options given to restart the game or not  | Asks if player wants to quit the game | stops the game | option n to restart the game  |
| Thank you  | A message to thank player | Thank you for playing message shows up | As expected | n/a |


---
# **♣ Improvement plan** 🔧⚙️



| Improving Features | 
| ------------------ | 
| * Making code DRY |
| * Implement Module |
| * Implement a login and Database system to save multiple players  scores in leaderboard |
| * Add more test coverage|
| * Display leaderboard after each round and show how many rounds left | 
   

---
🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼

