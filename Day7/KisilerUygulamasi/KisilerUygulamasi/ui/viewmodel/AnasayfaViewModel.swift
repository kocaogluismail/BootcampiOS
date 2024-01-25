//
//  AnasayfaViewModel.swift
//  KisilerUygulamasi
//
//  Created by İsmail Kocaoglu on 21.01.2024.
//

import Foundation
import RxSwift

class AnasayfaViewModel {
    var krepo = KisilerDaoRepository()
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    init() {
        kisilerListesi = krepo.kisilerListesi
        kisileriYukle()
    }
    
    
    func sil(kisi_id:Int) {
        krepo.sil(kisi_id: kisi_id)
        
    }
    func ara(aramaKelimesi:String) {
        krepo.ara(aramaKelimesi: aramaKelimesi)
        
    }
    
    func kisileriYukle(){
        krepo.kisileriYukle()
    }
}
