//
//  FindImageIsBrokenVC.swift
//  hw11ImageLibrary
//
//  Created by admin on 2/20/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class FindImageIsBrokenVC: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var nameFail = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = nameFail
    }
    

}
