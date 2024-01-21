//
//  UrunlerHucre.swift
//  UrunlerApp
//
//  Created by İsmail Kocaoglu on 20.01.2024.
//

import UIKit


protocol HucreProtocol {
    func sepeteEkleTiklandi(indexPath:IndexPath) 
}

class UrunlerHucre: UITableViewCell {


    @IBOutlet weak var labelUrunFiyat: UILabel!
    @IBOutlet weak var labelUrunAd: UILabel!
    @IBOutlet weak var imageViewUrun: UIImageView!
    @IBOutlet weak var hucreArkaPlan: UIView!
    
    var hucreProtocol:HucreProtocol?
    var indexPath:IndexPath?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func buttonSepeteEkle(_ sender: Any) {
        hucreProtocol?.sepeteEkleTiklandi(indexPath: indexPath!)
    }
    
}
