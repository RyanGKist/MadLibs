//
//  WordsVC.swift
//  MadLibs
//
//  Created by Ryan Kistner on 1/16/18.
//  Copyright © 2018 Ryan Kistner. All rights reserved.
//

import UIKit

class WordsVC: UIViewController {

    
    @IBOutlet weak var adjectiveText: UITextField!
    
    @IBOutlet weak var verbOneText: UITextField!
    
    @IBOutlet weak var verbTwoText: UITextField!
    
    @IBOutlet weak var nounText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func submitButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "unwind", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "unwind"){
            let main = segue.destination as! MainVC
            main.adjectiveHolder = adjectiveText.text
            main.verbOneHolder = verbOneText.text
            main.verbTwoHolder = verbTwoText.text
            main .nounHolder = nounText.text
        }
    }
}
