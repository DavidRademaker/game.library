//
//  Game Manager.swift
//  VideoGameLibrary
//
//  Created by David Rademaker on 2/13/18.
//  Copyright © 2018 David Rademaker. All rights reserved.
//

import Foundation

var gameLibrary = [VideoGame]()



func addGame() {
    print("What is the name of the game?")
    let name = readLine()!
    print("What genre is the game?")
    let genre = readLine()!
    print("What is the game rated?")
    let rating = readLine()!
    let game = VideoGame(name: name, genre: genre, rating: rating, checkOutDate: nil, checkedOut: false)
    gameLibrary.append(game)
    menu()
}


func removeGame() {
    print("What game would you like to remove?")
    let name = readLine()
    var counter = 0
    
    for videoGame in gameLibrary {
        if videoGame.name == name {
            gameLibrary.remove(at: counter)
        }
        counter += 1
    }
    menu()
}

func checkGameOut() {
    print("What game would you like to check out")
    listGames()
    let name = readLine()
    
    
    for videoGame in gameLibrary {
        if videoGame.name == name {
            let currentDate = Date()
            
            let calendar = Calendar.current
            
            let weekFromNow = calendar.date(byAdding: .day, value: 7, to: currentDate)
            print("The game is due on \(String(describing: weekFromNow))")
            videoGame.checkedOut = true
        }
        
        
    }
    
}

func checkGameIn() {
    
    
    for videoGame in gameLibrary {
        if videoGame.checkedOut == true {
            print(videoGame.name)
        }
        
        
    }
    print("What game are you checking in?")
    let name = readLine()
    for videogame in gameLibrary {
        if videogame.name == name {
            videogame.checkedOut = false
        }
    }
}

func listGames() {
    for VideoGame in gameLibrary {
        print(VideoGame.name)
    }
}
