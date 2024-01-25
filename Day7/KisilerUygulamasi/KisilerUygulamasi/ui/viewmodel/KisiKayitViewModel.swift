//
//  KisiKayıtViewModel.swift
//  KisilerUygulamasi
//
//  Created by İsmail Kocaoglu on 21.01.2024.
//

import Foundation

class KisiKayitViewModel {
    var krepo = KisilerDaoRepository()
    
    func kaydet(kisi_ad:String,kisi_tel:String){
        print("Kişi Kaydet: \(kisi_ad) - \(kisi_tel)")
    }
}
