//
//  FindImageSuccessVC.swift
//  hw11ImageLibrary
//
//  Created by admin on 2/20/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class FindImageSuccessVC: UIViewController {
    
    @IBOutlet weak var imageVIewOutlet: UIImageView!
    
    var tempImageVIewOutlet = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        imageVIewOutlet.image = UIImage(named: tempImageVIewOutlet)
    }


}
