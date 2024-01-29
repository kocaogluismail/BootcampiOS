//
//  FilmlerDaoRepository.swift
//  FilmlerApp
//
//  Created by İsmail Kocaoglu on 23.01.2024.
//

import Foundation
import RxSwift
import FirebaseFirestore

class FilmlerDaoRepository {
    
    var filmlerListesi = BehaviorSubject<[Filmler]>(value: [Filmler]())
    var collectionFilmler = Firestore.firestore().collection("Filmler")
    
    func filmleriYukle() {
        
        
        
        collectionFilmler.getDocuments() { snapshot,error in
            var liste = [Filmler]()
            
            if let documents = snapshot?.documents {
                
                for document in documents {
                    let data = document.data()
                    let id = document.documentID
                    let ad = data["ad"] as? String ?? ""
                    let resim = data["resim"] as? String ?? ""
                    let fiyat = data["fiyat"] as? Int ?? 0
                    
                let film = Filmler (id: id, ad: ad, resim: resim, fiyat: fiyat)
                    
                    liste.append(film)
                }
                
            }
            self.filmlerListesi.onNext(liste)
        }
    }
}
