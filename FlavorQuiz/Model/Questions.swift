//
//  Questions.swift
//  FlavorQuiz
//
//  Created by Mimi Tu on 3/9/19.
//  Copyright © 2019 Mimi Tu. All rights reserved.
//

import Foundation

class Questions {
    var text:String = ""
    var answer:Bool
    
    init(question:String,correctAnswer:Bool) {
        text = question
        answer = correctAnswer
    }
    
}
