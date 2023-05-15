//
//  HomeViewController.swift
//  PetSurveyApp
//
//  Created by kingSemih on 15.05.2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genusTextField: UITextField!
    @IBOutlet weak var surveyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendSurveyOnAction(_ sender: UIButton) {
        
        let alertCtrl:UIAlertController = UIAlertController(title: "Are You Sure Send Info?", message: "name:\(nameTextField.text) genus\(genusTextField.text)", preferredStyle: UIAlertController.Style.alert)
        let sendButton:UIAlertAction = UIAlertAction(title: "Send", style: UIAlertAction.Style.default)
        alertCtrl.addAction(sendButton)
        present(alertCtrl, animated: true)
    }
    
    @IBAction func SegmentOnChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            surveyImage.image = UIImage(named: "cat")
        }else{
            surveyImage.image = UIImage(named: "dog")
        }
    }
}
