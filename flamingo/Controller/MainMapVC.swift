//
//  MainMapVC.swift
//  flamingo
//
//  Created by Jaxson Mann on 5/7/17.
//  Copyright © 2017 Jaxson Mann. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MainMapVC: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    
    @IBOutlet weak var mainMap: MKMapView!
    @IBOutlet weak var goBtn: UIButton!
    
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainMap.delegate = self
        mainMap.showsUserLocation = true
        mainMap.showsPointsOfInterest = true
        mainMap.showsBuildings = true
        
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.requestWhenInUseAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }
    

}









