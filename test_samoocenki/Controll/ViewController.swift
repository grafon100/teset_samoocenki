//
//  ViewController.swift
//  САМООЦЕНКИ ДЕПРЕССИИ
//
//  Created by grafon100 on 28/08/2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressBar.applyDesignForProgress()
        questionText.applyDesignForLable()
        button1.applyDesign()
        button2.applyDesign()
        button3.applyDesign()
        button4.applyDesign()
        setStart()
        questionText.text = testBrain.test[0].textQuestion
        button4.setTitle("НАЧАТЬ ТЕСТ", for: .normal)
    }
    
    var testBrain = TestBrain()

    @IBAction func clickButton(_ sender: UIButton) {
        /*let alphaButton = sender.alpha
        sender.alpha = alphaButton-0.15
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
              sender.alpha = alphaButton
          }
 */
        
        let userAnswer = sender.currentTitle!
        if userAnswer == "НАЧАТЬ ТЕСТ" || userAnswer == "ПОВТОРИТЬ ТЕСТ"{
            //button1.isHidden = false
            button1.alpha = 0.9
            button2.isHidden = false
            button3.isHidden = false
            button4.setTitle("БОЛЬШУЮ ЧАСТЬ ВРЕМЕНИ", for: .normal)
        }
        
        testBrain.addPointUser(answerUser: userAnswer)
        updateUI()
        
        if testBrain.returnNumberQuestion() == 0{
            setStart()
            button4.setTitle("ПОВТОРИТЬ ТЕСТ", for: .normal)
        }
    }
    
    func updateUI (){
        questionText.text = testBrain.nextAnswer()
        progressBar.progress = testBrain.changeProgress()
        
    }
    
    func setStart(){
        //button1.isHidden = true
        button1.alpha = 0.0
        button2.isHidden = true
        button3.isHidden = true
        }
    }


extension UIProgressView{
    func applyDesignForProgress() {
        self.layer.shadowColor = UIColor.purple.cgColor
        self.layer.shadowRadius = 8
        self.layer.shadowOpacity = 5
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
    }
}

extension UILabel{
    func applyDesignForLable() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 8
        self.layer.shadowOpacity = 5
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
    }
}

extension UIButton {
    func applyDesign() {
        self.layer.cornerRadius = self.frame.height / 6
        // Smooth corners
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowRadius = 10
        self.layer.shadowOpacity = 2
        self.layer.shadowOffset = CGSize(width: 0, height: 0)
    }
}
