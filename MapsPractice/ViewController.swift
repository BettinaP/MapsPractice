//
//  ViewController.swift
//  MapsPractice
//
//  Created by Bettina on 2/27/18.
//  Copyright © 2018 Bettina Prophete. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var map: MKMapView!
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
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
//        let mLatitude: CLLocationDegrees = 45.558
//        let mLongitude: CLLocationDegrees = -73.552
//        let mLatDelta: CLLocationDegrees = 0.05
//        let mLongDelta: CLLocationDegrees = 0.05
//        let mSpan = MKCoordinateSpan(latitudeDelta: mLatDelta, longitudeDelta: mLongDelta)
//        let mLocation = CLLocationCoordinate2D(latitude: mLatitude, longitude: mLongitude)
//        let mRegion = MKCoordinateRegion(center: mLocation, span: mSpan)
//        map.setRegion(mRegion, animated: true)
//
//        //adding annotations
//        let annotation = MKPointAnnotation()
//        annotation.title = "Stade Olympique"
//        annotation.subtitle = "One day, I'll go watch a game there!"
//        annotation.coordinate = mLocation
//        map.addAnnotation(annotation)
//
//        let uiLongPressGR = UILongPressGestureRecognizer(target: self, action: #selector(self.longpress))
//        uiLongPressGR.minimumPressDuration = 2 //standard
//        map.addGestureRecognizer(uiLongPressGR)
    }
    
    @objc func longpress(gestureRecognizer: UIGestureRecognizer) {
        
        let touchPoint = gestureRecognizer.location(in: self.map)
        let coordinate = map.convert(touchPoint, toCoordinateFrom: self.map)//map converting touchpoint to coordinates from the map. TouchPoint shows us location on screen to coordinates. Map does converting for us because it knows both where gesture was and where it is in terms of coordinate space.
        let annotation = MKPointAnnotation()
        annotation.coordinate = coordinate
        annotation.title = "New place"
        annotation.subtitle = "maybe go there..."
        map.addAnnotation(annotation)
        
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let userLocation: CLLocation = locations[0]
        let ulatitutde = userLocation.coordinate.latitude
        let ulongitude = userLocation.coordinate.longitude
        let ulatDelta: CLLocationDegrees = 0.05
        let ulongDelta: CLLocationDegrees = 0.05
        let uSpan = MKCoordinateSpan(latitudeDelta: ulatDelta, longitudeDelta: ulongDelta)
        let uLocation = CLLocationCoordinate2D(latitude: ulatitutde, longitude: ulongitude)
        let uRegion = MKCoordinateRegion(center: uLocation, span: uSpan)
        self.map.setRegion(uRegion, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

