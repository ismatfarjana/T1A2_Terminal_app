

---

# README
# 📓🔨 **Development story**
---
### **:memo: List of ideas**  
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
#  📜 **About The project 🤔**
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
* Open terminal on computer. 💻🖥
* The prerequisite of this project is to have `ruby` installed in computer. 
* If `ruby` is not installed go to this link to find instructions of how to install ruby.
 
 🔗 ***LINK FOR RUBY INSTALATION FOR DIFFERENT OPERATING SYSTEM***
https://www.ruby-lang.org/en/documentation/installation/?fbclid=IwAR1MkBp39ufIWmZHksBjWN3kCE7aYFI3Z17gBpFNSsbiovHFaV2SwpXj6yY

* Run `git clone git@github.com:ismatfarjana/T1A2_Terminal_app.git` 
* Nevigate to the file by entering `cd 
T1A2_Terminal_app/src` 
* Run the file by typing in this pattern `ruby tic_tac_toe.rb <number of rounds>`
* `<number of rounds>` is the number of **total round** user wants to play the game.

* **Users sign ❎** is hard coded for the simplicity of the game. Opponent **Bot** will be holding ⭕ sign.
* User needs to **choose** one number from **1** to **9** and hit **enter** button.
 

####  💁🏻 What user is going to experience through the process of the project❓

🗣
* Hitting the enter button will show a **WELCOME** 💐 message and and the program will ask users **name**.😎

* After entering a number each time, **Bot** will take turn and this circle will go on `loop` 🔄 untill the **number of round** is finished.

* After each round name of the **winner** 👑 will be shown.
* After finishing all rounds **Leaderboard** 🏁 will appear which will show if there is a **WINNER** 🎉 or it is a **DRAW** 👻



####  
---
# **♣ Short walk through the project 🍰**
 Let's have a quick ride 

#### 🖼️ 💁 Running the app with `ruby <filename> <number of round> `

:pushpin: 
![](https://i.imgur.com/AKUNHwL.png)
:::

#### 🖼️ 💁 Returning **WELCOME** message with question asking users name. 
:pushpin: 
![](https://i.imgur.com/dPcWyuC.png)


#### 🖼️ 💁The program shows the hard coded sign chossen for each player: 
## USER(⛹️) Vs Bot(🤖)
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

## 🕹
#### While choosing the places, if player enter any place number which is already taken request for choosing another available place number will show up untill the number place is **available/ valid input**
:round_pushpin: 
![](https://i.imgur.com/9cwzs99.png)

#### Game will run smoothly after valid input is given 🚄
---




# ♣ THE GAME FLOW AT A GLANCE 
🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸 
![](https://i.imgur.com/yVkZhfV.png)

🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸🌸 
---


# ♣  **Project management plan  🚧**
> day to day work with terminal screen shots and trello[name=Syeda Ismat Farjana]
---
### DAY 1

### DAY 2

### DAY 3

### DAY 4

### DAY 5

### DAY 6

---
# ♣ **Testing and Bug fixing** 🐛🐞🔫

---
# **♣ Improvement plan** 🔧⚙️


   

| Column 1 | Column 2 | Column 3 |
| -------- | -------- | -------- |
| Text     | Text     | Text     |

---
