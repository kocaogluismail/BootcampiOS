//
//  ViewController.swift
//  KullaniciEtkilesimi
//
//  Created by İsmail Kocaoglu on 16.01.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel) { action in
        print("iptal seçildi")
        }
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) { action in
            print("Tamam seçildi")}
        alertController.addAction(tamamAction)
        self.present(alertController, animated: true)
    }
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel) { action in
        print("iptal seçildi")
        }
        alertController.addAction(iptalAction)
        
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive) { action in
            print("Tamam seçildi")}
        alertController.addAction(tamamAction)
        self.present(alertController, animated: true)
    }
    
    @IBAction func buttonOzelAlert(_ sender: Any) {
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        alertController.addTextField { textField in
            textField.placeholder = "Veri giriniz."
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
            
        }
        alertController.addTextField()
        
        let tamamAction = UIAlertAction(title: "Kaydet", style: .cancel) { action in
            let tf = alertController.textFields![0] as UITextField
            let tf1 = alertController.textFields![1] as UITextField
            
            if let alinanVeri = tf.text, let alinanVeri1 = tf1.text {
                print("Veri:\(alinanVeri) - \(alinanVeri1)")
            }
            }
        alertController.addAction(tamamAction)
        self.present(alertController, animated: true)
    }
}

