//
//  String+Lines.swift
//  SwiftCSV
//
//  Created by Naoto Kaneko on 2/24/16.
//  Copyright © 2016 Naoto Kaneko. All rights reserved.
//
//  Made Swift 4 compatible by Jeff Terry on 2/17/18
//

extension String {
    var firstLine: String {
        var current = startIndex
       
        
        while current < endIndex && self.firstLine[current] != "\r\n" && self.firstLine[current] != "\n" && self.firstLine[current] != "\r" {
            current = self.index(after: current)
            
        }
        
        let returnString = self.firstLine[startIndex..<current]

        
        return String(returnString)
    }
}
