//
//  ResultsViewController.swift
//  Quiz
//
//  Created by Gabriel Taques on 10/05/19.
//  Copyright © 2019 Gabriel Taques. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var firstResultCard: UIView!
    @IBOutlet weak var secondResultCard: UIView!
    @IBOutlet weak var thirdResultCard: UIView!
    @IBOutlet weak var fourthResultCard: UIView!
    @IBOutlet weak var fifthResultCard: UIView!
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    
    @IBOutlet weak var firstResultLabel: UILabel!
    @IBOutlet weak var secondResultLabel: UILabel!
    @IBOutlet weak var thirdResultLabel: UILabel!
    @IBOutlet weak var fourthResultLabel: UILabel!
    @IBOutlet weak var fifthResultLabel: UILabel!
    
    @IBOutlet weak var stackOne: UIStackView!
    @IBOutlet weak var stackTwo: UIStackView!
    @IBOutlet weak var stackThree: UIStackView!
    @IBOutlet weak var stackFour: UIStackView!
    @IBOutlet weak var stackFive: UIStackView!
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2, animations: {
            self.firstResultCard.alpha = 1
            self.firstLabel.alpha = 1
            self.stackOne.alpha = 1
            },completion: nil)
        UIView.animate(withDuration: 4, animations: {
            self.secondResultCard.alpha = 1
            self.secondLabel.alpha = 1
            self.stackTwo.alpha = 1
        },completion: nil)
        UIView.animate(withDuration: 6, animations: {
            self.thirdResultCard.alpha = 1
            self.thirdLabel.alpha = 1
            self.stackThree.alpha = 1
        },completion: nil)
        UIView.animate(withDuration: 7, animations: {
            self.fourthResultCard.alpha = 1
            self.fourthLabel.alpha = 1
            self.stackFour.alpha = 1
        },completion: nil)
        UIView.animate(withDuration: 8, animations: {
            self.fifthResultCard.alpha = 1
            self.fifthLabel.alpha = 1
            self.stackFive.alpha = 1
        },completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkAnswers()
        // Do any additional setup after loading the view.
    }
    
    func checkAnswers() {
        if InformationSingleton.shared.questions[0].isRight {
            firstResultLabel.text = "Você está CORRETO"
        }else {
            firstResultLabel.text = "Você está INCORRETO"
        }
        if InformationSingleton.shared.questions[1].isRight {
            secondResultLabel.text = "Você está CORRETO"
        }else {
            secondResultLabel.text = "Você está INCORRETO"
        }
        if InformationSingleton.shared.questions[2].isRight {
            thirdResultLabel.text = "Você está CORRETO"
        }else {
            thirdResultLabel.text = "Você está INCORRETO"
        }
        if InformationSingleton.shared.questions[3].isRight {
            fourthResultLabel.text = "Você está CORRETO"
        }else {
            fourthResultLabel.text = "Você está INCORRETO"
        }
        if InformationSingleton.shared.questions[4].isRight {
            print("Is right malucoooo")
            fifthResultLabel.text = "Você está CORRETO"
        }else {
            print("Ta right naoooo!")
            fifthResultLabel.text = "Você está INCORRETO"
        }
    }
    @IBAction func resetQuiz(_ sender: Any) {
        for q in InformationSingleton.shared.questions {
            q.isRight = false
            q.selected = -1
        }
        InformationSingleton.shared.currentQuestion = 0
        performSegue(withIdentifier: "resetQuiz", sender: self)
    }

}
