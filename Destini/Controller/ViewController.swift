//
//  ViewController.swift
//  Destini
//
//  Created by Marwan Mekhamer on 14/03/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Storylbl: UILabel!
    @IBOutlet weak var Choice1btn: UIButton!
    @IBOutlet weak var Choice2btn: UIButton!
    
    var marwan = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func choicey(_ sender: UIButton) {
        
        marwan.getNextstory(sender.currentTitle ?? "")
        
        allData()
    }
    
    func allData() {
        Choice1btn.setTitle(marwan.getChoice1(), for: .normal)
        Choice2btn.setTitle(marwan.getChoice2(), for: .normal)
        Storylbl.text = marwan.getStory()
    }
    
}
