//
//  main.swift
//  guessing-game
//
//  Created by Devan Allara on 7/10/17.
//  Copyright © 2017 Devan Allara. All rights reserved.
//

import Foundation

//This variable determines if the user is playing the game
var playingGame = true

//This loop will run while the game is running
while playingGame {
    //Number that the user is trying to guess
    let secretNumber = arc4random_uniform(100)
    
    print("Welcome to the number guessing game!")
    print("Please guess a number between 0 and 100!")
    var userGuess = Int(readLine()!)!
    
    //Checks to see if the number is a valid number
    while userGuess < 0 || userGuess > 100 {
        print("Please input a valid number")
        userGuess = Int(readLine()!)!
    }
    
    //Loop runs while the user has not guessed the correct number
    while userGuess != secretNumber {
        if secretNumber > userGuess {
            print("Guess a higher number")
            userGuess = Int(readLine()!)!
        } else if secretNumber < userGuess {
            print("Guess a lower number")
            userGuess = Int(readLine()!)!
        }
        
        //Run this code when the user guesses the correct number
        if userGuess == secretNumber {
            print("You got the secret number would you like to play again?")
            print("Please type yes or no")
            var stillPlaying = readLine()!.uppercased()
            
            while stillPlaying != "YES" && stillPlaying != "NO" {
                print("Please type yes or no")
                stillPlaying = readLine()!.uppercased()
            }
            if stillPlaying == "NO" {
                print("Thanks for playing!")
                playingGame = false
                
            }
        }
    }
    
}


