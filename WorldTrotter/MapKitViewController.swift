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
        
        
        // set segment control with 3 item and initial attribute
        let standardString = NSLocalizedString("Standard", comment: "Standard map View")
        let satellateString = NSLocalizedString("Satellate", comment: "Satallate map view")
        let hybridString = NSLocalizedString("Hybrid", comment: "Hybrid map view")
        let segmentedControl = UISegmentedControl(items: [standardString , satellateString , hybridString])
        segmentedControl.backgroundColor = UIColor.white.withAlphaComponent(0.5)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addTarget(self, action:  #selector(mapTypeChanged), for: .valueChanged)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        // add segment control to view
        view.addSubview(segmentedControl)
        
        // auto layout for segment control
        let topConstraint = segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8)
        let margins = view.layoutMarginsGuide
        let leadingConstraint = segmentedControl.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailingConstraint = segmentedControl.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        
        topConstraint.isActive = true
        leadingConstraint.isActive = true
        trailingConstraint.isActive = true
    }
    
    @objc func mapTypeChanged(_ segControl: UISegmentedControl)-> Void{
        switch segControl.selectedSegmentIndex {
        case 0:
            mapView.mapType = .standard
        case 1:
            mapView.mapType = .hybrid
        case 2:
            mapView.mapType = .satellite
        default:
            break
        }
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
