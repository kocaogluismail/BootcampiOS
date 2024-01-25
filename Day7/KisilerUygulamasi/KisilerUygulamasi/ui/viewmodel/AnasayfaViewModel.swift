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
    var kisilerListesi = BehaviorSubject<[KisilerModel]>(value: [KisilerModel]())
    init() {
        kisilerListesi = krepo.kisilerListesi
        kisileriYukle()
    }
    
    
    func sil(kisi:KisilerModel) {
        krepo.sil(kisi: kisi)
        
    }
    func ara(aramaKelimesi:String) {
        krepo.ara(aramaKelimesi: aramaKelimesi)
        
    }
    
    func kisileriYukle(){
        krepo.kisileriYukle()
    }
}
