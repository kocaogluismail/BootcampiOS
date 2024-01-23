//
//  Kisiler.swift
//  Odev7
//
//  Created by İsmail Kocaoglu on 23.01.2024.
//

import Foundation
class Kisiler {
    
    var kisi_id:Int?
    var kisi_ad:String?
    
    init() {
        
    }
    init(kisi_id: Int, kisi_ad: String?) {
        self.kisi_id = kisi_id
        self.kisi_ad = kisi_ad
    }
}
