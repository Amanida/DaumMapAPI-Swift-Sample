//
//  ViewController.swift
//  DaumMapExample
//
//  Created by 이규진 on 2016. 11. 23..
//  Copyright © 2016년 이규진. All rights reserved.
//

import UIKit

class ViewController: UIViewController, MTMapViewDelegate {

    private let daumAPIKey = "0aed54bf93f38824004cc2353e4abb32" // replace with your Daum API Key
    
    lazy var mapView: MTMapView = MTMapView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.daumMapApiKey = daumAPIKey
        mapView.delegate = self
        mapView.baseMapType = .standard
        self.view.addSubview(mapView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        var items = [MTMapPOIItem]()
        items.append(poiItem(name: "하나", latitude: 37.4981688, longitude: 127.0484572))
        items.append(poiItem(name: "둘", latitude: 37.4987963, longitude: 127.0415946))
        items.append(poiItem(name: "셋", latitude: 37.5025612, longitude: 127.0415946))
        items.append(poiItem(name: "넷", latitude: 37.5037539, longitude: 127.0426469))
        
        mapView.addPOIItems(items)
        mapView.fitAreaToShowAllPOIItems()
    }

    func poiItem(name: String, latitude: Double, longitude: Double) -> MTMapPOIItem {
        let item = MTMapPOIItem()
        item.itemName = name
        item.markerType = .redPin
        item.markerSelectedType = .redPin
        item.mapPoint = MTMapPoint(geoCoord: .init(latitude: latitude, longitude: longitude))
        item.showAnimationType = .noAnimation
        item.customImageAnchorPointOffset = .init(offsetX: 30, offsetY: 0)
        
        return item
    }

}
