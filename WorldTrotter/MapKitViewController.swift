//
//  MapKitViewController.swift
//  WorldTrotter
//
//  Created by Quan's Macbook on 21/03/2022.
//

import UIKit
import MapKit

class MapKitViewController: UIViewController {

    @IBOutlet weak var mapkitView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print("Map View controller loaded its view")
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
