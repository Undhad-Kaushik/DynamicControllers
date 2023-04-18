//
//  ViewController.swift
//  DynamicControllers
//
//  Created by undhad kaushik on 12/01/23.
//

import UIKit

class ViewController: UIViewController {
    
    var nameLabel: UILabel!
    var addreshLabel: UILabel!
    var nameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        setup()
    }
    
    private func setup(){
        configurNameLabel(with: "Kaushik")
        configurAddressLabel(with: "undhad sheri vadiya")
        configurNameTextField(with: "Undhad Kaushik Chaaganbhai")
    }
    
    private func configurNameLabel(with text: String){
        nameLabel = getNameLabel(text: text)
        view.addSubview(nameLabel)
        
    }
    
    private func configurAddressLabel(with text: String){
        addreshLabel = getAddressNameLabel(text: text)
        view.addSubview(addreshLabel)
    }
    
    private func configurNameTextField(with text: String){
        nameTextField = getNameTextField(text: text)
        view.addSubview(nameTextField)
    }
    
    private func getNameLabel(text: String)-> UILabel{
        let  nameLabelFrame: CGRect = CGRect(x: 16, y: 60, width: view.frame.width-32, height: 50)
        
        let labelName: UILabel = UILabel(frame: nameLabelFrame)
        labelName.backgroundColor = .clear
        labelName.numberOfLines = 2
        labelName.shadowColor = .blue
        labelName.textAlignment = .center
        labelName.textColor = .black
        labelName.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        labelName.text = text
        
        return labelName
    }
    
    
    private func getAddressNameLabel(text: String) -> UILabel{
        let adreeshLabelFrame: CGRect = CGRect(x: 16, y: 118, width: view.frame.width-32, height: 50)
        let labelAddress: UILabel = UILabel(frame: adreeshLabelFrame)
        labelAddress.shadowColor = .red
        labelAddress.textColor = .red
        labelAddress.textAlignment = .center
        labelAddress.font = UIFont.systemFont(ofSize: 18, weight: .heavy)
        labelAddress .text = text
        return labelAddress
    }
    
    private func getNameTextField(text: String) -> UITextField{
        
        let nameTextFieldFrame: CGRect = CGRect(x: 16, y: 184, width: view.frame.width-32, height: 50)
        let nameTextLbl: UITextField = UITextField(frame: nameTextFieldFrame)
        nameTextLbl.text = text
        nameTextLbl.textAlignment = .justified
        nameTextLbl.borderStyle = .roundedRect
        nameTextLbl.backgroundColor = .brown
        nameTextLbl.placeholder = "Enter Your Full Name"
        nameTextLbl.font = UIFont.systemFont(ofSize: 18, weight: .light)
        return nameTextLbl
        
    }
    


}

