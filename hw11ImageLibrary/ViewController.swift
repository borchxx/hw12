//
//  ViewController.swift
//  hw11ImageLibrary
//
//  Created by admin on 2/20/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var textFieldOutlet: UITextField!
    
    let segueID = ["findImageSuccess", "findImageIsBroken"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchButton.layer.cornerRadius = 15
        searchButton.layer.borderWidth = 2
        searchButton.layer.borderColor = UIColor.white.cgColor
    }
    
    override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
          navigationController?.setNavigationBarHidden(true, animated: animated)
      }

    override func viewWillDisappear(_ animated: Bool) {
          super.viewWillDisappear(animated)
          navigationController?.setNavigationBarHidden(false, animated: animated)
     }
      
    
    @IBAction func searchButtonAction(_ sender: Any) {
        let imageName = textFieldOutlet.text
       
        if imageName!.isEmpty{
            showAlert(withText: "Введите имя картинки")
        }else {
            if UIImage(named: imageName!) != nil{
                self.performSegue(withIdentifier: segueID[0], sender: sender)
            } else {
                self.performSegue(withIdentifier: segueID[1], sender: sender)
            }
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let imageName = textFieldOutlet.text
        if segue.identifier == segueID[0]{
           
            let findImageSuccessVC = segue.destination as! FindImageSuccessVC
            findImageSuccessVC.tempImageVIewOutlet = imageName!
            findImageSuccessVC.title = imageName! 
        } else if segue.identifier == segueID[1]{
            let findImageIsBrokenVC = segue.destination as! FindImageIsBrokenVC
            findImageIsBrokenVC.nameFail = "Can not find an image with name: \(imageName!)"
        }
    }
    
    
  
    
    func showAlert(withText text: String) {
        let alertController = UIAlertController(title: "Ошибка",
                                                message: text,
                                                preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK",
                                     style: .default,
                                     handler: nil)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
    }

}
