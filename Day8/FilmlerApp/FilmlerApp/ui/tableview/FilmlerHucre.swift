//
//  filmlerHucre.swift
//  FilmlerApp
//
//  Created by İsmail Kocaoglu on 21.01.2024.
//

import UIKit

protocol HucreProtocol {
    func SepeteEkleTikla(indexPath:IndexPath)
}


class FilmlerHucre: UICollectionViewCell {
    
    @IBOutlet weak var imageViewFilm: UIImageView!
    
    @IBOutlet weak var labelFiyat: UILabel!
    
    var hucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
    
    
    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.SepeteEkleTikla(indexPath: indexPath!)
    }
    
}
