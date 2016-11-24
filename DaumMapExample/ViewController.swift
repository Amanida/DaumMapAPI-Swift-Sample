//
//  ViewController.swift
//  DaumMapExample
//
//  Created by 이규진 on 2016. 11. 23..
//  Copyright © 2016년 이규진. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MTMapViewDelegate {

    private let daumAPIKey = "0aed54bf93f38824004cc2353e4abb32"
    
    lazy var mapView: MTMapView = MTMapView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.daumMapApiKey = daumAPIKey
        mapView.delegate = self
        mapView.baseMapType = .standard
        self.view.addSubview(mapView)
    }

}
