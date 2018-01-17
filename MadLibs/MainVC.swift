//
//  MainVC.swift
//  MadLibs
//
//  Created by Ryan Kistner on 1/16/18.
//  Copyright © 2018 Ryan Kistner. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    var adjectiveHolder : String?
    var verbOneHolder : String?
    var verbTwoHolder : String?
    var nounHolder : String?
    
    @IBAction func unwindToVC1(segue:UIStoryboardSegue){ }
    
    @IBOutlet weak var madlibsText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        if let _ = adjectiveHolder{
            madlibsText.text = "\(adjectiveHolder!) - adjective, \(verbOneHolder!) - Verb 1, \(verbTwoHolder!) - Verb 2, \(nounHolder!) - Nount."
        }else{
            madlibsText.text = "..."
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

