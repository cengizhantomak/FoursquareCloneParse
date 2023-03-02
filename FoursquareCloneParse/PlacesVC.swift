//
//  PlacesVC.swift
//  FoursquareCloneParse
//
//  Created by Kerem Tuna Tomak on 2.03.2023.
//

import UIKit
import Parse

class PlacesVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(addButtonClicked))
        
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItem.Style.plain, target: self, action: #selector(logoutButtonClicked))
        
    }
    
    @objc func addButtonClicked() {
        //Segue
        self.performSegue(withIdentifier: "toAddPlaceVC", sender: nil)
    }
    
    @objc func logoutButtonClicked() {
        PFUser.logOutInBackground { error in
            if error != nil {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true)
            } else {
                self.performSegue(withIdentifier: "toSignUpVC", sender: nil)
            }
        }
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
