//
//  AnasayfaViewModel.swift
//  FilmlerApp
//
//  Created by İsmail Kocaoglu on 23.01.2024.
//

import Foundation
import RxSwift

class AnasayfaViewModel {
    var frepo = FilmlerDaoRepository()
    var filmlerlistesi = BehaviorSubject<[Filmler]>(value: [Filmler]())
    init() {
        filmlerlistesi = frepo.filmlerListesi
        filmleriYukle()
    }
    func filmleriYukle() {
        frepo.filmleriYukle()
        
    }
    
}
