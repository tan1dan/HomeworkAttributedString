//
//  ViewController.swift
//  HomeworkAttributedString
//
//  Created by Иван Знак on 12/12/2023.
//

import UIKit

enum Colors {
    case red
    case orange
    case yellow
    case green
    case blue
    case darkBlue
    case purple
}

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let string = "Каждый охотник желает знать где сидит фазан"
        let words = string.components(separatedBy: " ")
        let attributedString = NSMutableAttributedString(string: string)
        
        for (i, word) in words.enumerated() {
            var color = UIColor()
            switch i {
            case 0: color = .red
            case 1: color = .orange
            case 2: color = .yellow
            case 3: color = .green
            case 4: color = .systemBlue
            case 5: color = .blue
            case 6: color = .purple
            default:
                color = .black
            }
            let range = (string as NSString).range(of: word)
            attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: color, range: range)
        }
       label.attributedText = attributedString
        print(words)
    }


}

