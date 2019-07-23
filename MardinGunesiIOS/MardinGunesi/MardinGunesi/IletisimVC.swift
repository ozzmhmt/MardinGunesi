//
//  IletisimVC.swift
//  MardinGunesi
//
//  Created by ozzmhmt on 14.07.2019.
//  Copyright © 2019 Mehmet Oz. All rights reserved.
//


import UIKit
import PMSuperButton

class IletisimVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func btnFacebook(_ sender: PMSuperButton) {
        
        if let url = URL(string: "https://m.facebook.com/pages/Mardin-Valiligi/166037386809422") {
            UIApplication.shared.open(url, options: [:])
        }
        
    }
    
    @IBAction func btnTwitter(_ sender: PMSuperButton) {
        
        if let url = URL(string: "https://twitter.com/mardinvaliligi") {
            UIApplication.shared.open(url, options: [:])
        }
    }
    
    
    @IBAction func btnInstagram(_ sender: PMSuperButton) {
        
        if let url = URL(string: "https://www.instagram.com/mardin_province") {
            UIApplication.shared.open(url, options: [:])
        }
    }
}
