//
//  KisiDetayViewModel.swift
//  KisilerUygulamasi
//
//  Created by İsmail Kocaoglu on 21.01.2024.
//

import Foundation

class KisiDetayViewModel {
    var krepo = KisilerDaoRepository()
    func guncelle(kisi_id:String,kisi_ad:String,kisi_tel:String) {
        krepo.guncelle(kisi_id: kisi_id, kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
}
