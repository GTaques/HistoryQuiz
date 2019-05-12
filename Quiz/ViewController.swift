//
//  ViewController.swift
//  Quiz
//
//  Created by Gabriel Taques on 09/05/19.
//  Copyright © 2019 Gabriel Taques. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet weak var imageQuestion: UIImageView!
    @IBOutlet weak var nextQuestionButton: UIButton!
    
    @IBOutlet weak var alternativeAButton: UIButton!
    var aButtonPressed = false
    
    @IBOutlet weak var alternativeBButton: UIButton!
    var bButtonPressed = false
    
    @IBOutlet weak var alternativeCButton: UIButton!
    var cButtonPressed = false
    
    @IBOutlet weak var alternativeDButton: UIButton!
    var dButtonPressed =  false
    
    var currentQuestion: Question!
    
    
    override func viewWillAppear(_ animated: Bool) {
        refreshScreen()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    func setupButtons() {
        alternativeAButton.layer.borderWidth = 0.8
        alternativeAButton.layer.borderColor = UIColor(white: 1, alpha: 0.8).cgColor
        alternativeAButton.setTitle(InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion].statements[1], for: .normal)
        alternativeAButton.setTitleColor(UIColor(white: 1, alpha: 0.8), for: .normal)
        alternativeAButton.layer.backgroundColor = UIColor.black.cgColor
        
        alternativeBButton.layer.borderWidth = 0.8
        alternativeBButton.layer.borderColor = UIColor(white: 1, alpha: 0.8).cgColor
        alternativeBButton.setTitle(InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion].statements[2], for: .normal)
        alternativeBButton.setTitleColor(UIColor(white: 1, alpha: 0.8), for: .normal)
        alternativeBButton.layer.backgroundColor = UIColor.black.cgColor
        
        alternativeCButton.layer.borderWidth = 0.8
        alternativeCButton.layer.borderColor = UIColor(white: 1, alpha: 0.8).cgColor
        alternativeCButton.setTitleColor(UIColor(white: 1, alpha: 0.8), for: .normal)
        alternativeCButton.setTitle(InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion].statements[3], for: .normal)
        alternativeCButton.layer.backgroundColor = UIColor.black.cgColor
        
        alternativeDButton.layer.borderWidth = 0.8
        alternativeDButton.layer.borderColor = UIColor(white: 1, alpha: 0.8).cgColor
        alternativeDButton.setTitleColor(UIColor(white: 1, alpha: 0.8), for: .normal)
        alternativeDButton.setTitle(InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion].statements[4], for: .normal)
        alternativeDButton.layer.backgroundColor = UIColor.black.cgColor
        
    }
    
    func setupQuestions() {
        
    }
    
    
    @IBAction func aClicked(_ sender: Any) {
        selectButton(btn: alternativeAButton)
        buttonDiselect(btn: alternativeBButton)
        buttonDiselect(btn: alternativeCButton)
        buttonDiselect(btn: alternativeDButton)
        InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion].selected = 0
        nextQuestionButton.isHidden = false

    }
    
    @IBAction func bClicked(_ sender: Any) {
        selectButton(btn: alternativeBButton)
        buttonDiselect(btn: alternativeAButton)
        buttonDiselect(btn: alternativeCButton)
        buttonDiselect(btn: alternativeDButton)
        InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion].selected = 1
        nextQuestionButton.isHidden = false
    }
    
    @IBAction func cClicked(_ sender: Any) {
        selectButton(btn: alternativeCButton)
        buttonDiselect(btn: alternativeAButton)
        buttonDiselect(btn: alternativeBButton)
        buttonDiselect(btn: alternativeDButton)
        InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion].selected = 2
        nextQuestionButton.isHidden = false

    }
    
    @IBAction func dClicked(_ sender: Any) {
        selectButton(btn: alternativeDButton)
        buttonDiselect(btn: alternativeAButton)
        buttonDiselect(btn: alternativeBButton)
        buttonDiselect(btn: alternativeCButton)
        InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion].selected = 3
        nextQuestionButton.isHidden = false
    }
    
    func buttonDiselect(btn: UIButton) {
        btn.layer.backgroundColor = UIColor.black.cgColor
        btn.layer.borderColor = UIColor(white: 1, alpha: 0.6).cgColor
        btn.layer.borderWidth = 0.8
        btn.setTitleColor(UIColor(white: 1, alpha: 0.6), for: .normal)
    }
    
    func refreshScreen(){
        let question = InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion]
        toggleButton()
        labelQuestion.text = question.question
        imageQuestion.image = question.image
        setupButtons()
        if question.selected > -1 {
            print("Maior que menos um: \(question.selected)")
            switch question.selected {
                case 0:
                    selectButton(btn: alternativeAButton)
                    break
                case 1:
                    selectButton(btn: alternativeBButton)
                    break
                case 2:
                    selectButton(btn: alternativeCButton)
                    break
                case 3:
                    selectButton(btn: alternativeDButton)
                    break
                default:
                    break
            }
        }
    }
    
    func selectButton(btn: UIButton) {
        btn.layer.borderWidth = 0
        btn.backgroundColor = UIColor(white: 1, alpha: 0.8)
        btn.setTitleColor(UIColor(white: 0, alpha: 1), for: .normal)
    }
    
    func toggleButton() {
        if InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion].selected > -1 {
            nextQuestionButton.isHidden = false
        } else {
            nextQuestionButton.isHidden = true
        }
    }
    
    @IBAction func nextQuestionButton(_ sender: Any) {
        
       print("Current question: \(InformationSingleton.shared.currentQuestion), Correct Answer: \(InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion].correct), Selected: \(InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion].selected)")
        
//        if InformationSingleton.shared.currentQuestion == 4 {
//            performSegue(withIdentifier: "showResults", sender: self)
//            InformationSingleton.shared.currentQuestion = 0
//            if InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion].selected > -1 {
//                checkAnswer()
//            }
//            return
//        }
        
        if InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion].selected > -1 {
            checkAnswer()
            if (InformationSingleton.shared.currentQuestion == 4) {
                InformationSingleton.shared.currentQuestion = 0
                performSegue(withIdentifier: "showResults", sender: self)
                refreshScreen()
            } else {
                InformationSingleton.shared.currentQuestion += 1
                refreshScreen()
            }
        } else {
            return
        }
        
    }
    
    func checkAnswer() {
        if InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion].selected == InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion].correct {
            InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion].isRight = true
        } else {
            InformationSingleton.shared.questions[InformationSingleton.shared.currentQuestion].isRight = false
        }
    }
    
    
    @IBAction func backClicked(_ sender: Any) {
        for q in InformationSingleton.shared.questions {
            q.isRight = false
            q.selected = -1
        }
        InformationSingleton.shared.currentQuestion = 0
        dismiss(animated: true, completion: nil)
        
    }
    
}

