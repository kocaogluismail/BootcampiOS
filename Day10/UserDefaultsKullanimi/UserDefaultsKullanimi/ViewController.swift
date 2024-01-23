//
//  ViewController.swift
//  UserDefaultsKullanimi
//
//  Created by İsmail Kocaoglu on 23.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSayac: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ud = UserDefaults.standard
        
        //KAYIT
        ud.set("Ahmet", forKey: "ad")
        ud.set(23, forKey: "yas")
        ud.set(1.78, forKey: "boy")
        ud.set(true, forKey: "bekar")
        
        let liste = ["ali","ece"]
        ud.set(liste, forKey: "liste")
        
        let sehirler = ["34":"İstanbul","27":"GAZİANTEP"]
        ud.set(sehirler, forKey: "sehirler")
        
        //Silme
        //ud.removeObject(forKey: "ad")
        
        //Okuma
        let gelenAd = ud.string(forKey: "ad") ?? "isim yok"
        let gelenYas = ud.integer(forKey: "yas")
        let gelenBoy = ud.double(forKey: "boy")
        let gelenBekar = ud.bool(forKey: "bekar")
        print("Gelen Ad: \(gelenAd)")
        print("Gelen Ad: \(gelenYas)")
        print("Gelen Ad: \(gelenBoy)")
        print("Gelen Ad: \(gelenBekar)")
        
        let gelenListe = ud.array(forKey: "liste") ?? [String]()
        
        for a in gelenListe {
            print("Gelen Liste : \(a)")
            
        }
        let gelenSehirler = ud.dictionary(forKey: "sehirler") ?? [String:String]()
        for(anahtar,deger) in gelenSehirler {
            print("Gelen Şehir : \(anahtar) -> \(deger)")
        }
        
        
        //Sayac Uygulaması
        var sayac = ud.integer(forKey: "sayac") //0
        sayac = sayac + 1
        
        ud.set(sayac, forKey: "sayac")
        
        labelSayac.text = "Açılış Sayısı: \(sayac)"
        
        
    }


}

