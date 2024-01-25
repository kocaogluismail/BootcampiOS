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
        veritabaniKopyala()
        filmlerlistesi = frepo.filmlerListesi
        filmleriYukle()
    }
    func filmleriYukle() {
        frepo.filmleriYukle()
        
    }
    func veritabaniKopyala(){
    let bundleYolu = Bundle.main.path(forResource: "filmler_app", ofType: ".sqlite")
    let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
    let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("filmler_app.sqlite")
    let fileManager = FileManager.default
    if fileManager.fileExists(atPath: kopyalanacakYer.path){
    print("Veritabanı zaten var")
    }else{
    do{
    try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
    }catch{}
    }
    }
}
