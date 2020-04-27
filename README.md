

---

# README


# ♣ 📜 **About The project 🤔**
---
####  💁🏻 What is it❓

 🗣A simple terminal interface that will let the user play the classic tic-tac-toe against computer named "Bot". 
 
 
 :pushpin: **info: Source of Defination**
 ![](https://i.imgur.com/NMe8gOd.png)

####  💁🏻 What is the purpose of this project❓

🗣 To give fun experience using the terminal interface while playing the game.
####  💁🏻 How it works❓

🗣 
**User needs to follow the instructions below**
   **To start this project ⬇**
   ---
* Open terminal on computer. 💻🖥
* The prerequisite of this project is to have `ruby` installed in computer. 
* If `ruby` is not installed go to this link to find instructions of how to install ruby.
 
 🔗 ***LINK FOR RUBY INSTALATION FOR DIFFERENT OPERATING SYSTEM***
https://www.ruby-lang.org/en/documentation/installation/?fbclid=IwAR1MkBp39ufIWmZHksBjWN3kCE7aYFI3Z17gBpFNSsbiovHFaV2SwpXj6yY

* Run `git clone git@github.com:ismatfarjana/T1A2_Terminal_app.git` 
* Nevigate to the file by entering `cd 
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

* After entering a number each time, **Bot** will take turn and this circle will go on `loop` 🔄 untill the **number of round** is finished.

* After each round name of the **winner** 👑 will be shown.
* After finishing all rounds **Leaderboard** 🏁 will appear which will show if there is a **WINNER** 🎉 or it is a **DRAW** 👻

---

# ♣ **Development story**📓🔨

### **♣:memo: List of ideas**  
---
*💡= idea, 🔵= description,  🍎= reason for not selecting, 🍏= reason for selecting*



#### 💡  BMI(Body Mass Index) calculator 💪
🔵BMI is one type of tool to help health professionals assess the risk for chronic disease by dividing the weight in kg and height in meter squared.

🍎Does not have that much complexity that this project requires. It only takes two integers as input and does a simple calculation and gives regarding information for different weight, mainly a string based app.
#### 💡  Barefoot calculator 💸💰💲
🔵It is a terminal application inspired by the book "The barefoor investor" by Scott Pape.

🍎Does not have that much complexity that this project requires. It only takes one integers as input and does a few simple calculations, sends money management plans, mainly a string based app.

#### 💡  Snake-ladder game :snake: 🎲
🔵 An ancient Indian board game played between two or more players on a gameboard having numbered, gridded squares.

🍎It will require 3 to 4 weeks of time for me to build the complex structure of a snake ladder though I will work on it in as a coding skill practice project.

#### 💡  Sudoku puzzle
🔵A logic-based, combinatorial number-placement puzzle which could be a beautiful project.

🍎Requires lots of time and logical understanding to build it.

#### 💡 Number guessing game 🔢
🔵 A simple number guessing game against computer .

🍎  It was not challaging enough to fulfill the requirements.

#### 💡  Tic-Tac-Toe ✅ **Final project  :rocket:**
🔵 Tic-tac-toe is a game where two players take turns to complete a row, a column, or a diagonal with either three O's or three X's drawn in the spaces of a grid of nine squares; noughts and crosses.

🍏 The time frame and the challange of this seemed perfect if properly done. So I choose this classic game.
        
        
---

####  
---
# **♣ Short walk through the project 🍰**
 Let's have a quick ride 

#### 🖼️ 💁 Running the app with `ruby <filename> <number of round> `

:pushpin: 
![](https://i.imgur.com/AKUNHwL.png)

#### 🖼️ 💁 Returning **WELCOME** message with question asking users name. 
:pushpin: 
![](https://i.imgur.com/dPcWyuC.png)


#### 🖼️ 💁The program shows the hard coded sign chossen for each player: 
**USER(⛹️) Vs Bot(🤖)**
:pushpin: 
![](https://i.imgur.com/nHoaUsQ.png)


####  🖼️ 💁Empty board shows up with a instruction for choosing the place and entering one number from 1 to 9
:pushpin: 
![](https://i.imgur.com/gjjFxYv.png)
#### 🖼️ 💁Showes both players choosen number
:pushpin: 
![](https://i.imgur.com/0IF5qXs.png)

#### 🖼️ 💁Shows the board with placed sign, asks for another number 
:pushpin: 
![](https://i.imgur.com/2qBFYDY.png)

#### 🖼️ 💁Play goes on until one of the perticipent wins the round. After that 🏅winners name 🏅 for correesponding round is published.
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


# **♣ Edge cases**

## 🕹
#### If `<number of rounds>` is not given as arrgument while running the app , number of rounds will be asked again.
Game will not start untill valid arrgument is passed 🚫
**In this case arrgument passed on must be an `Integer`**
:round_pushpin: 
![](https://i.imgur.com/asaMC3J.png)

#### Once the right valid arrgument is passed, the game will start with the WELCOME 💐 message :pancakes: 
 
 **♣ CHECK FOR INPUT DATA TYPE**
- [x] Value greater then `0`
- [x] Not a `string`
- [x] Not a `boolean`

## 🕹
#### While choosing the places, if player enter any place number which is already taken request for choosing another available place number will show up untill the number place is **available/ valid input**
:round_pushpin: 
![](https://i.imgur.com/9cwzs99.png)

#### Game will run smoothly after valid input is given 🚄

 **♣ CHECK FOR INPUT DATA TYPE**
 - [x] Value greater then `0` & less then `10`
- [x] Not a `string`
- [x] Not a `boolean`
---




# ♣ THE GAME FLOW AT A GLANCE 
🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸 
![](https://i.imgur.com/yVkZhfV.png)

🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸 
---


# ♣  **Project management plan  🚧**
> day to day work with terminal screen shots and trello
---
### **DAY 1 (20 April) 😎**

- [x] The Assessment was published.
- [x] Thinking and and narrowing down my ideas of projects.
- [x] Learnt about trello and how to use it.
- [x] Built my first trello board. 
- [x] Added few lists and cards

![](https://i.imgur.com/factNnR.jpg)

- [x] Listed my ideas in one card

![](https://i.imgur.com/Q88WEyH.jpg)



### **DAY 2 (21 April) 🧐**

- [x] Finalized idea tic-tac-toe. 
- [x] Scratched a game flow chart to make it reasonably working

![](https://i.imgur.com/vrt6gSS.png)


### **DAY 3 (22 April) 🧐**

- [x] Accoding to the requirements of the asessmnet created an empty directory and a github repository.

![](https://i.imgur.com/aK1i9XV.png)

- [x] Created README file to start writting down 

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
- [x] Created diffrent branches and wrote code for each features:
> player class and tests : Model
> leaderboard class and tests : Model
> operator class : Veiw and Controller
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

- [x] Improved code to run the game for first time to check if it works as expected. At this point it was supposed to take signs from user and place it in the board.

![](https://i.imgur.com/S3S63PA.png)

- [x] Added loop to finish the round and show the result

![](https://i.imgur.com/sYnK2Mf.png)



### **DAY 6 (25 April) 😅**

- [x] Improving code to fix the errors.Like, for the last place I couldnot enter the place number because it was returning empty string. FIXED IT.

![](https://i.imgur.com/0pepbTP.png)

- [x] Keep fixing the open ends of my game, all information is in my trello board and files are available in my github repository.

![](https://i.imgur.com/z3sHAqZ.jpg)


### **DAY 7 (26 April) 😅**

- [x] Made peresentation file, finised readme file.

![](https://i.imgur.com/UTjR1GT.jpg)

- [x] Total 9 branches added to github

![](https://i.imgur.com/vT8Hm3h.png)


![](https://i.imgur.com/QMegpRi.png)

updated trello

![](https://i.imgur.com/MyYd4qQ.jpg)

---


[**Github link**](https://github.com/ismatfarjana/T1A2_Terminal_app)
[**Trello link**](https://trello.com/invite/b/VOiw1zfE/c063a538e570dbca0f034cb9d0aa836c/termnalapp-tic-tac-toe/)
[**Lucid chart**](https://www.lucidchart.com/invitations/accept/1f045cbe-8d17-4de9-a375-5b8d76e5260d/)
---
# ♣ **Testing and Bug fixing** 🐛🐞🔫

## Player

- Added unit tests to test player's name, sign and scores to be persisted and updated during a game.
- Tested player's scores start with 0.

## Game

- Added unit tests to test Game to provide number of rounds left to finish the game and update rounds when players finish a round.

## Place

- Added unit tests to test place position and sign on the board.

## Board

- Added unit tests to test board has enough places.
- Tested that board can place player sign when a player choose a place
- Tested that board can calculate winning pattern when a player has one.

## Leaderboard

- Added unit tests to test loeaderboard returns sorted players list based on their scores.
- Tested that leaderboard returns winner's name.
- Tested that leaderboard returns a winner when there is a winner.
---
# **♣ Improvement plan** 🔧⚙️



| Improving Features | 
| ------------------ | 
| * Making code DRY |
| * Implement Module |
| * Implement a log in and Database system to save multiple players  scores in leaderboard |
| * Add more test coverage|
   

---
🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼🌼