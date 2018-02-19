//
//  main.swift
//  VideoGameLibrary
//
//  Created by David Rademaker on 2/13/18.
//  Copyright © 2018 David Rademaker. All rights reserved.
//

import Foundation

var inMenu = true
func menu() {
    print("""
What would you like to do
1.Add game
2.Remove a game
3.Check a game out
4.Check a game in
5.List games
6.Quit
""")
    var answer = Int(readLine()!)!
    if answer == 1 {
        addGame() }
    else if answer == 2 {
        removeGame() }
    else if answer == 3 {
        checkGameOut() }
    else if answer == 4 {
        checkGameIn()  }
    else if answer == 5 {
        listGames() }
    else if answer == 6 {
        exit(0)
        
    }
    else {
        print("Invalid Input")
    }
}
while inMenu == true {
    menu()
}
