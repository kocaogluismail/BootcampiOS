//
//  DetaySayfa.swift
//  Odev6
//
//  Created by İsmail Kocaoglu on 21.01.2024.
//

import UIKit

class DetaySayfa: UIViewController {

    @IBOutlet weak var imageViewFilm: UIImageView!
    @IBOutlet weak var labelKullanim: UILabel!
    @IBOutlet weak var labelAciklama: UILabel!
    
    var baslik:Basliklar?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let b = baslik {
            labelAciklama.text = b.description
            imageViewFilm.image = UIImage(named: b.resim!)
            labelKullanim.text=("\(b.kullanim!)")
        }
    }
    

   

}
