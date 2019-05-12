//
//  AnswersSingleton.swift
//  Quiz
//
//  Created by Gabriel Taques on 09/05/19.
//  Copyright © 2019 Gabriel Taques. All rights reserved.
//

import UIKit

class InformationSingleton {
    
    static let shared = InformationSingleton()
    
    private init() {
        currentQuestion = UserDefaults.standard.integer(forKey: "currentQuestion")
        currentAlternative = UserDefaults.standard.integer(forKey: "currentAlternative")
        answerOne = UserDefaults.standard.integer(forKey: "answerOne")
        answerTwo = UserDefaults.standard.integer(forKey: "answerTwo")
        answerThree = UserDefaults.standard.integer(forKey: "answerThree")
        answerFour = UserDefaults.standard.integer(forKey: "answerFour")
        answerFive = UserDefaults.standard.integer(forKey: "answerFive")
    }
    
    var questions = [
        Question(
            image:UIImage(named: "Church")!,
            question: "Qual o nome do artista que segundo a história invocou o diabo para construir a fechadura da Catedral de Notre Dame?",
            statements: [1:"  A - Biscornet", 2:"  B - Marie Curie",3:"  C - Paul Gauguin", 4:"  D - Fréderic Bazille"],
            correct: 0,
            selected: -1,
            isRight: false
        ),
        Question(
            image: UIImage(named: "Helmets")!,
            question: "A primeira Cruzada foi liderada por qual lider religioso?",
            statements: [1:"  A - Papa Urbano II", 2:"  B - Papa Melquíades I", 3:"  C - Papa Silvestre I", 4:"  D - Papa Leão I, O Grande"],
            correct: 0,
            selected: -1,
            isRight: false
        ),
        Question(
            image: UIImage(named: "Pyramids")!,
            question: "A quem foi atribuída a construção das piramides de Gizé no Egito?",
            statements: [1:"  A - Cleópatra ", 2:"  B - Khufu", 3:"  C - Aménofis III", 4:"  D - Tutankhamen"],
            correct: 1,
            selected: -1,
            isRight: false
        ),
        Question(
            image: UIImage(named: "Ruins")!,
            question: "Qual o nome do vulcão que destruiu a cidade romana Pompéia em 79dC ?",
            statements: [1:"  A - Monte Tambora", 2:"  B - Monte Vesúvio", 3:"  C - Monte Etna", 4:"  D - Mauna Loa"],
            correct: 1,
            selected: -1,
            isRight: false
        ),
        Question(
            image: UIImage(named: "Taj")!,
            question: "Em 1857, qual exército roubou pedras preciosas e outros utencílios do mausoléu do Taj Mahal?",
            statements: [1:"  A - Espanhol", 2:"  B - Holandês", 3:"  C - Inglês", 4:"  D - Português"],
            correct: 2,
            selected: -1,
            isRight: false
        )
        
        
    ]
    
    var currentQuestion: Int = 0 {
        didSet{
            UserDefaults.standard.set(self.currentQuestion, forKey: "currentQuestion")
        }
    }
    
    var currentAlternative: Int {
        didSet{
            UserDefaults.standard.set(self.currentAlternative, forKey: "currentAlternative")
        }
    }
    
    var answerOne: Int {
        didSet{
            UserDefaults.standard.set(self.answerOne, forKey: "answerOne")
        }
    }
    var answerTwo: Int {
        didSet{
            UserDefaults.standard.set(self.answerTwo, forKey: "answerTwo")
        }
    }
    var answerThree: Int {
        didSet{
            UserDefaults.standard.set(self.answerThree, forKey: "answerThree")
        }
    }
    var answerFour: Int {
        didSet{
            UserDefaults.standard.set(self.answerFour, forKey: "answerFour")
        }
    }
    var answerFive: Int {
        didSet{
            UserDefaults.standard.set(self.answerFive, forKey: "answerFive")
        }
    }
    
    
}
