//
//  ViewController.swift
//  03FindMyPosition
//
//  Created by bk.xiong on 2018/7/4.
//  Copyright © 2018年 xiongbk. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController,CLLocationManagerDelegate {
    
    
    let locationManager = CLLocationManager()
    let geocoder = CLGeocoder()
    let locationLabel = UILabel()
    let addressLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bgImageView = UIImageView(frame: self.view.bounds)
        bgImageView.image = UIImage(named: "picture")
        self.view.addSubview(bgImageView)
        
        // 模糊效果
        let blurEffect: UIBlurEffect = UIBlurEffect(style: .light)
        let blurView: UIVisualEffectView = UIVisualEffectView(effect: blurEffect)
        blurView.frame = self.view.bounds
        self.view.addSubview(blurView)
    
        // 经纬度
        locationLabel.frame = CGRect(x: 10, y: 100, width: self.view.bounds.size.width - 60 , height: 60)
        locationLabel.text = "经纬度"
        locationLabel.numberOfLines = 0
        locationLabel.textColor = UIColor.black
        self.view.addSubview(locationLabel)
        
        // 地址
        addressLabel.frame = CGRect(x: 10, y: 150, width: self.view.bounds.size.width - 60, height: 30)
        addressLabel.text = "地址"
        addressLabel.textColor = UIColor.black
        self.view.addSubview(addressLabel)
        
        // 查找位置按钮
        let findBtn = UIButton()
        self.view .addSubview(findBtn)
        
        //  button文字居左对齐
        findBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignment.left
        findBtn.titleEdgeInsets = UIEdgeInsetsMake(0, 0, 0, 0)
        
        findBtn.frame = CGRect(x: 10, y: 200, width: 200, height: 30)
        findBtn.setTitle("查找位置", for:UIControlState.normal)
        findBtn.setTitleColor(UIColor.blue, for: UIControlState.normal)
        findBtn.titleLabel?.font = UIFont.systemFont(ofSize: 25)
        findBtn.addTarget(self, action: #selector(findLocation), for: UIControlEvents.touchUpInside)
        
        locationManager.delegate = self;
        
    }
    
    
    @objc func findLocation() -> Void {
        
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }

    //MARK:- CLLocationManagerDelegate
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        //  as 从派生类转化到父类
        let locations : NSArray = locations as NSArray
        
        // as!向下类型转换
        let currentLocation = locations.lastObject as! CLLocation
        
        // lat:latitude(维度)  lng:longitude(经度)
        let locationStr = "lat:\(currentLocation.coordinate.latitude)  lng:\(currentLocation.coordinate.longitude)"
        locationLabel.text = locationStr;
        
        
        print(locationStr)
//        locationLabel.text = locationStr
        reverseGeocode(location:currentLocation)
        locationManager.stopUpdatingLocation()
        
        
    }
    
    //地理信息转换为城市信息
    func reverseGeocode(location:CLLocation) {
        geocoder.reverseGeocodeLocation(location) { (placeMark, error) in
            if(error == nil) {
                let tempArray = placeMark! as NSArray
                let mark = tempArray.firstObject as! CLPlacemark
    
                
                let street = mark.thoroughfare!
                let city =  mark.locality!
                let country = mark.country!

                let finalAddress = "\(street),\(city),\(country)"
                print(finalAddress)
                
                self.addressLabel.text = finalAddress
                
            }else{
                
                print("错误")
            }
        }
    }
    
}

