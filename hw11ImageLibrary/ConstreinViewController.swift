//
//  ConstreinViewController.swift
//  hw11ImageLibrary
//
//  Created by admin on 2/21/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class ConstreinViewController: UIViewController {

    
    @IBOutlet var viewArray: [UIView]!
     let colorArray: [UIColor] = [.blue, .red, .blue, .green, .green]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for i in viewArray {
            i.layer.cornerRadius = 0
        }
//
//
    }
    
    @IBAction func buttonCornerRadiusAction(_ sender: Any) {
        for i in viewArray {
            if i.layer.cornerRadius == 0  {
               i.layer.cornerRadius = 15
            } else {
                i.layer.cornerRadius = 0
            }
        }
    }
    
   
    @IBAction func buttonColorAction(_ sender: Any) {
        
        for i in viewArray{
            if i.backgroundColor != .black{
                i.backgroundColor = .black
            } else {
                updateColor()
            }
        }
    }
    
    func updateColor(){
          viewArray[0].backgroundColor = .blue
          viewArray[1].backgroundColor = .red
          viewArray[2].backgroundColor = .blue
          viewArray[3].backgroundColor = .green
          viewArray[4].backgroundColor = .green
      }
    
    
}
