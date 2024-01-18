//
//  OyunEkraniVC.swift
//  CalismaYapisi
//
//  Created by İsmail Kocaoglu on 11.01.2024.
//

import UIKit

class OyunEkraniVC: UIViewController {
    
    var kisi : Kisiler?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            print("Kisi ad: \(k.ad!)")
            print("Kisi yas: \(k.yas!)")
            print("Kisi boy: \(k.boy!)")
            print("Kisi bekar: \(k.bekar!)")
        }
    }
    
    @IBAction func buttonBitir(_ sender: Any) {
        performSegue(withIdentifier: "sonucEkraninaGecis", sender: nil)
    }
    @IBAction func buttonGeri(_ sender: Any) {
     //   navigationController?.popViewController(animated: true)//
       // navigationController?.popToRootViewController(animated: true)//
        
    }
    
}
