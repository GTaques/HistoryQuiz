//
//  Question.swift
//  Quiz
//
//  Created by Gabriel Taques on 09/05/19.
//  Copyright © 2019 Gabriel Taques. All rights reserved.
//

import UIKit

class Question {
    let image: UIImage!
    let question: String!
    let statements: [Int:String]!
    let correct: Int
    var selected: Int = -1
    var isRight: Bool = false
    
    init(image: UIImage, question: String, statements: [Int:String], correct: Int,selected: Int, isRight: Bool  ) {
        self.image = image
        self.question = question
        self.statements = statements
        self.correct = correct
        self.selected = selected
        self.isRight = isRight
    }
}
