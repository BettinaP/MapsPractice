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
     //NYC
//        let latitude: CLLocationDegrees = 40.7
//
//        let longitude : CLLocationDegrees = -74.0
//
//        let latDelta: CLLocationDegrees = 0.05 //zoom level of map
//
//        let longDelta: CLLocationDegrees = 0.05 //zoom  level of map, number of degrees difference along the longitude of the map that we can view
//
//        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)// combo of latDelta & longDelta for overall zoom level of map
//
//        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
//        
//        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
//
//        map.setRegion(region, animated: true)
        
        //MONTREAL: 45.5017° N, 73.5673° W
        //Stade Olympique 45.5580° N, 73.5519° W
        let mLatitude: CLLocationDegrees = 45.558
        let mLongitude: CLLocationDegrees = -73.552
        let mLatDelta: CLLocationDegrees = 0.05
        let mLongDelta: CLLocationDegrees = 0.05
        let mSpan = MKCoordinateSpan(latitudeDelta: mLatDelta, longitudeDelta: mLongDelta)
        let mLocation = CLLocationCoordinate2D(latitude: mLatitude, longitude: mLongitude)
        let mRegion = MKCoordinateRegion(center: mLocation, span: mSpan)
        map.setRegion(mRegion, animated: true)
        
        //adding annotations
        let annotation = MKPointAnnotation()
        annotation.title = "Stade Olympique"
        annotation.subtitle = "One day, I'll go watch a game there!"
        annotation.coordinate = mLocation
        map.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

