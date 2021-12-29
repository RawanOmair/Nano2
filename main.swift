//
//  main.swift
//  ToDoList1
//
//  Created by Rawan Omair on 20/05/1443 AH.
//

import Foundation


class exercise {
    
    var add : String
    var delete : String
    var viewAll : String
    
    init ( add : String , delete : String , viewAll : String){
        self.add = add
        self.delete = delete
        self.viewAll = viewAll
    }
    func A (){
        print("Add new exercise:")
    }
    func D (){
        print("What you want to delete")
    }
    func V (){
        print("Exercises List:")
    }
}

var userChoice : String?

var exerciseList: Array <String> =
["Up & down the stairs 5x",
 "50 squats",
 "20 push-ups",
 "1 minute plank",
 "50 sumo squats",
 "40 shoulder press",
"50 lunges",
 "60 bicycle crunches",
"50 squats",
 "Up & down the stairs 5x",
 "20 push-ups",
 "1 minute plank",
 "50 squats",
 "1 minute plank",
"60 bicycle crunches",
"Stretch"]

repeat {
print("-----------------------------------------------")
print("-------30 MINUTES FOR FULL BODY AT HOME--------")
print("                   EXERCISES                     ")
print("-----------------------------------------------")
print("              A Add New exercise               ")
print("              D Delete exercise                ")
print("              V View All exercises             ")
print("-----------------------------------------------")

 

 userChoice = readLine()
switch userChoice {
case "A":
    add()
case "D":
    delete()
case "V":
    viewAll()
default:
    print("Choose:")
    print("A Add New exercise 🤸🏻‍♀️")
    print("D Delete exercise")
    print("V View All exercises")
}

} while userChoice != "A" || userChoice != "D"
    func add(){
        print("Add new exercise:")
        if let userinput = readLine(){
            exerciseList.append(userinput)
            viewAll()
        }
    }
        
    

    func delete(){
        print("Which number do you want to delete? 🤔")
        if let userinput = readLine(){
          if let choice = Int(userinput){
              exerciseList.remove(at: choice - 1)
                

           }
        }
       

    }
func viewAll(){
    print("Exercises List:")
    for (index, value) in exerciseList.enumerated() {
        print(" \(index + 1) . \(value)")

    }
    
}

    



    
   
