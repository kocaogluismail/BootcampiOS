//
//  Kisiler.swift
//  KisilerUygulamasi
//
//  Created by İsmail Kocaoglu on 16.01.2024.
//

import Foundation

class Kisiler {
    var kisi_id:String?
    var kisi_ad:String?
    var kisi_tel:String?
    init(kisi_id: String, kisi_ad: String, kisi_tel: String) {
        self.kisi_id = kisi_id
        self.kisi_ad = kisi_ad
        self.kisi_tel = kisi_tel
    }
}
