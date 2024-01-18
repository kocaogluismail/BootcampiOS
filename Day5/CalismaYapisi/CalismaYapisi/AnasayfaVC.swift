//
//  ViewController.swift
//  CalismaYapisi
//
//  Created by Ismail Kocaoglu on 11.01.2024.
//

import UIKit

class AnaSayfaVC: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    //Leading-Left
    //Trailing-right
    
    override func viewDidLoad() {//Uygulama ilk acildiginda calisir(1 kere calisir)
        super.viewDidLoad()
        labelAnasayfa.text = "Hosgeldin"
        print("viewdidload calisti")
    }
    override func viewWillAppear(_ animated: Bool) {//her sayfa calisir ve sayfaya geri donuldugunda calisir
        print("viewWillAppear calisti")
    }
    override func viewWillDisappear(_ animated: Bool) {// sayfa her gorunmez oldugunda calisir.
        print("viewWillDissAppear calisti")
    }

    @IBAction func buttonYap(_ sender: Any) {
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        let kisi = Kisiler(ad: "Ismail", yas: 25, boy: 1.85, bekar: true)
        performSegue(withIdentifier: "oyunEkraninaGecis", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("prepare metodu calisti")
        
        if segue.identifier == "oyunEkraninaGecis" {
            print("oyunEkraniGecis calisti")
            
            if let veri = sender as? Kisiler {
                print("Veri : \(veri)")
                let gidilecekVC = segue.destination as! OyunEkraniVC
                gidilecekVC.kisi = veri
            }
            
        }
            
    }
    
    
    @IBAction func buttonAdd(_ sender: Any) {
        print("ADD secildi")
    }
    
    @IBAction func buttonSave(_ sender: Any) {
        print("Save secildi")
    }
    
    
}

