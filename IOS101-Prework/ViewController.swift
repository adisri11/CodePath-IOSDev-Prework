//
//  ViewController.swift
//  IOS101-Prework
//
//  Created by Aditi  on 5/4/25.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var universityLabel: UILabel!
    
    @IBOutlet weak var majorLabel: UILabel!
    
    @IBAction func changeTextColor(_ sender: UIButton) {
        let newColor = changeColor()
        UIView.animate(withDuration: 0.4) {
            self.nameLabel.textColor = newColor
            self.universityLabel.textColor = newColor
            self.majorLabel.textColor = newColor
        }
        
    }
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        UIView.animate(withDuration: 0.5) {
            self.view.backgroundColor = randomColor
        }
    }
    
    func changeColor() -> UIColor{

        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

