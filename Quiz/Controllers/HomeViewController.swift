//
//  HomeViewController.swift
//  Quiz
//
//  Created by Gabriel Taques on 10/05/19.
//  Copyright © 2019 Gabriel Taques. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var jogarButton: UIButton!
    @IBOutlet weak var bemVindoLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2, animations: {
            self.jogarButton.alpha = 1
            })
        UIView.animate(withDuration: 1, animations:{
            self.bemVindoLabel.alpha = 1
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for q in InformationSingleton.shared.questions {
            q.isRight = false
            q.selected = -1
        }
        InformationSingleton.shared.currentQuestion = 0
        jogarButton.layer.borderWidth = 0.8
        jogarButton.layer.borderColor = UIColor(white: 1, alpha: 0.8).cgColor
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
