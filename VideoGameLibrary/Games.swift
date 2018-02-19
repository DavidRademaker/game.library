//
//  Games.swift
//  VideoGameLibrary
//
//  Created by David Rademaker on 2/13/18.
//  Copyright © 2018 David Rademaker. All rights reserved.
//

import Foundation

class VideoGame {
    var name: String
    var genre: String
    var rating: String
    var checkOutDate: Date?
    var checkedOut: Bool
    init(name: String, genre: String, rating: String, checkOutDate: Date?, checkedOut: Bool) {
        self.name = name
        self.genre = genre
        self.rating = rating
        self.checkOutDate = checkOutDate
        self.checkedOut = checkedOut
    }
}

