//
//  KisiKayit.swift
//  Odev7
//
//  Created by İsmail Kocaoglu on 23.01.2024.
//

import UIKit

class KisiKayit: UIViewController {

   
    @IBOutlet weak var tfKisiAd: UITextField!
    
    var viewModel = KisiKayitViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

  
    @IBAction func buttonKaydet(_ sender: Any) {
        if let ka = tfKisiAd.text {
            viewModel.kaydet(kisi_ad: ka)
        }
    }
   
    
}
