//
//  ViewController.swift
//  FoursquareCloneParse
//
//  Created by Kerem Tuna Tomak on 2.03.2023.
//

import UIKit
import ParseSwift
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let parseObject = PFObject(className: "Fruits")
        parseObject["name"] = "Apple"
        parseObject["calories"] = 100
        parseObject.saveInBackground { success, error in
            if error != nil {
                print(error?.localizedDescription)
            } else {
                print("uploaded")
            }
        }
        
    }


}

