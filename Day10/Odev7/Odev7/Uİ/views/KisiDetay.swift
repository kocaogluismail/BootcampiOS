//
//  KisiDetay.swift
//  Odev7
//
//  Created by İsmail Kocaoglu on 23.01.2024.
//

import UIKit

class KisiDetay: UIViewController {

    @IBOutlet weak var tfKisiAd: UITextField!
    
    var kisi:Kisiler?
    
    var viewModel = KisiDetayViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kisi {
            tfKisiAd.text = k.kisi_ad
        }
    }
    
    @IBAction func buttonGuncelle(_ sender: Any) {
        if let ka = tfKisiAd.text,let k = kisi {
            viewModel.guncelle(kisi_id: k.kisi_id!, kisi_ad: ka)
        }
    }
    
  

}
