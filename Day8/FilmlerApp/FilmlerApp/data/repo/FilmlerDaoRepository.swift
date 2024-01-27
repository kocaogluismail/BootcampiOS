//
//  FilmlerDaoRepository.swift
//  FilmlerApp
//
//  Created by İsmail Kocaoglu on 23.01.2024.
//

import Foundation
import RxSwift
import Alamofire
import Kingfisher

class FilmlerDaoRepository {
    
    var filmlerListesi = BehaviorSubject<[Filmler]>(value: [Filmler]())
    
    func filmleriYukle() {
        //filmlerListesi.onNext(liste)
        AF.request("http://kasimadalan.pe.hu/filmler_yeni/tum_filmler.php",method: .get).response { response in
            if let data = response.data {
                do{
                    let cevap = try JSONDecoder().decode(FilmlerCevap.self, from: data)
                    if let liste = cevap.filmler {
                        self.filmlerListesi.onNext(liste)
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
             
        }
    }
}
