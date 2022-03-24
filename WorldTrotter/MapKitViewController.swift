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
    
    var mapView : MKMapView!
    
    override func loadView() {
        // Create a MapView
        mapView = MKMapView()
        
        // Set it as the view of this view controller
        view = mapView
        
        let segmentedControl = UISegmentedControl(items: ["Standard" , "Hybrid" , "Satellite"])
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedControl)
    }
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        print("Map View controller loaded its view")
//    }
//

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
