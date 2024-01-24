//
//  KisiKayitViewModel.swift
//  Odev7
//
//  Created by İsmail Kocaoglu on 23.01.2024.
//

import Foundation

class KisiKayitViewModel {
    var krepo = KisilerDaRepository()
    
    func kaydet(kisi_ad:String) {
        krepo.kaydet(kisi_ad:kisi_ad)
    }
}
