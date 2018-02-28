//
//  ViewController.swift
//  MapsPractice
//
//  Created by Bettina on 2/27/18.
//  Copyright © 2018 Bettina Prophete. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let latitude: CLLocationDegrees = 40.7
        
        let longitude : CLLocationDegrees = 74.0
        
        let latDelta: CLLocationDegrees = 0.05 //zoom level of map
        
        let longDelta: CLLocationDegrees = 0.05 //zoom  level of map, number of degrees difference along the longitude of the map that we can view
        
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)// combo of latDelta & longDelta for overall zoom level of map
        
        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        
        map.setRegion(region, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

