//
//  FikirVC.swift
//  MardinGunesi
//
//  Created by ozzmhmt on 14.07.2019.
//  Copyright © 2019 Mehmet Oz. All rights reserved.
//


import UIKit
import MessageUI
import Foundation

class FikirVC: UIViewController, MFMailComposeViewControllerDelegate {

    @IBOutlet weak var txtKonu: UITextField!
    
    @IBOutlet weak var txtFikir: UITextView!
    
    // MARK : HIDE KEYBOARD
    
    func hideKeyboard()
    {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(
            target: self,
            action: #selector(FikirVC.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboard()
        
    }
    
    // MARK: SEND EMAIL
    
    @IBAction func sendEmailButtonTapped(sender: AnyObject) {
        
        if (txtKonu.text != "" && txtFikir.text != "") {
            let mailComposeViewController = configuredMailComposeViewController()
            if MFMailComposeViewController.canSendMail() {
                self.present(mailComposeViewController, animated: true, completion: nil)
            } else {
                
            }
        }
        else {
            let alert = UIAlertController(title: "Hata", message: "Lütfen boş alan bırakmayınız !", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { action in
                switch action.style{
                case .default:
                    print("Tamam")
                    
                case .cancel: break
                    
                case .destructive: break
                    
                }}))
            self.present(alert, animated: true, completion: nil)
        }
        
        
        
    }
    
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
        mailComposerVC.setToRecipients(["mardin@icisleri.gov.tr"])
        mailComposerVC.setSubject("Bir Fikrim Var")
        mailComposerVC.setMessageBody("\(txtKonu.text!) \n\n \(txtFikir.text!)", isHTML: false)
        
        return mailComposerVC
    }
    
    
    // MARK: MFMailComposeViewControllerDelegate Method
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }


}
