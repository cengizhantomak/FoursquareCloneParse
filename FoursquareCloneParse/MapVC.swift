//
//  MapVC.swift
//  FoursquareCloneParse
//
//  Created by Kerem Tuna Tomak on 2.03.2023.
//

import UIKit
import MapKit

class MapVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(title: "Save", style: UIBarButtonItem.Style.plain, target: self, action: #selector(saveButtonClicked))
        
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "< Back", style: UIBarButtonItem.Style.plain, target: self, action: #selector(backButtonClicked))
        
        //print(globalName)
        
        print(PlaceModel.sharedInstance.placeName)
        
    }
    
    @objc func saveButtonClicked() {
        //PARSE
    }
    
    @objc func backButtonClicked() {
        //navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
