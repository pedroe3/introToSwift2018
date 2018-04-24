//
//  Note.swift
//  Quiz_Class6
//
//  Created by Pedro Rivera on 4/24/18.
//  Copyright © 2018 io.ricoLabs. All rights reserved.
//

import Foundation

struct Note {
    let name: String
    let dateCreated: Date
    let isNew: Bool
 
}



extension Note {
  

    
    var isNewText: String { //need to create a function to calculate thedifference of time more than 5 min.
        get {
            if isNew {
                return "Note named \(name) is brand new"
            }
            else{
                return "Note named \(name) was created more than 5 mins ago"
            }
          
        }
    
    }
}
