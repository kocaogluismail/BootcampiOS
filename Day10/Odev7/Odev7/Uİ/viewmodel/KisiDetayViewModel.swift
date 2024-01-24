//
//  KisiDetayViewModel.swift
//  Odev7
//
//  Created by İsmail Kocaoglu on 23.01.2024.
//

import Foundation

class KisiDetayViewModel {
    var krepo = KisilerDaRepository()
    func guncelle(kisi_id:Int,kisi_ad:String) {
        krepo.guncelle(kisi_id: kisi_id, kisi_ad: kisi_ad)
    }

}
