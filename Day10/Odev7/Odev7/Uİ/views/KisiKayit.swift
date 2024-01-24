//
//  KisiKayit.swift
//  Odev7
//
//  Created by İsmail Kocaoglu on 23.01.2024.
//

import UIKit

class KisiKayit: UIViewController {

   
    @IBOutlet weak var tfKisiAd: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
    @IBAction func buttonKaydet(_ sender: Any) {
        if let ka = tfKisiAd.text {
            kaydet(kisi_ad: ka)
        }
    }
    func kaydet(kisi_ad:String) {
        print("Kişi Kaydet:\(kisi_ad)")
    }
    
}
