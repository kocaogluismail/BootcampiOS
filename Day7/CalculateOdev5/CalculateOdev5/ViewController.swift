//
//  ViewController.swift
//  CalculateOdev5
//
//  Created by İsmail Kocaoglu on 17.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var labelGiris: UILabel!
    
    var sonuc:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func hepsiniTemizle() {
        sonuc = ""
        labelSonuc.text = ""
        labelGiris.text = ""
    }
    

    @IBAction func hepsiniSil(_ sender: Any) {
        hepsiniTemizle()
    }
    
    func sonucEkle(value:String) {
        sonuc = sonuc + value
        labelGiris.text = sonuc
    }
    
    @IBAction func birKarakterSil(_ sender: Any) {
        if (!sonuc.isEmpty) {
            sonuc.removeLast()
            labelGiris.text = sonuc
        }
    }
    
    
    @IBAction func yüzdelikYap(_ sender: Any) {
        sonucEkle(value: "%")
    }
    
    
    @IBAction func bölmeYap(_ sender: Any) {
        sonucEkle(value: "/")
    }
    
    
    @IBAction func carpmaYap(_ sender: Any) {
        sonucEkle(value: "*")
    }
    
    @IBAction func cikarmaYap(_ sender: Any) {
        sonucEkle(value: "-")
    }
    
    @IBAction func toplamYap(_ sender: Any) {
        sonucEkle(value: "+")
    }
    
    @IBAction func toplamSonucVer(_ sender: Any) {
        if (validInput()) {
            
            
            let yuzdelikKontrol = sonuc.replacingOccurrences(of: "%", with: "*0.01")
            let veri = NSExpression(format:yuzdelikKontrol)
            let result = veri.expressionValue(with: nil, context: nil) as! Double
            let resultString = formatResult(result: result)
            labelSonuc.text = resultString
        }
        else {
            
            let alert = UIAlertController(
                title: "Geçersiz Giriş", message: "Hesap makinesinde girdiğiniz değerde işlem yapılmıyor", preferredStyle: .alert
            
            )
            alert.addAction(UIAlertAction(title: "Tamam", style: .default))
            self.present(alert,animated: true, completion: nil)
        }
    }
  
    
    
    
    func validInput() -> Bool {
        var count = 0
        var funcCharIndexes = [Int]()
        
        for char in sonuc {
            if(ozelKarekter(char: char)) {
                funcCharIndexes.append(count)
            }
            count += 1
        }
        var eski : Int = -1
        
        for index in funcCharIndexes {
            if (index == 0) {
                return false
            }
            if (index == sonuc.count - 1) {
                return false
            }
            if (eski != -1) {
                if(index - eski == 1) {
                    return false
                }
            }
            eski = index
        }
                return true
    }
    func ozelKarekter (char: Character) -> Bool {
        if (char == "*") {
            return true
        }
        if (char == "/") {
            return true
        }
        if (char == "+") {
            return true
        }
        return false

    }
    func formatResult(result:Double) -> String {
        if(result.truncatingRemainder(dividingBy: 1) == 0) {
            return String(format: "%.0f",result)
        }
        else {
            return String(format:"%.2f",result)
        }
    }
    
    @IBAction func buttonSıfır(_ sender: Any) {
        sonucEkle(value: "0")
    }
    
    @IBAction func buttonBir(_ sender: Any) {
        sonucEkle(value: "1")
    }
    
    
    @IBAction func buttonIki(_ sender: Any) {
        sonucEkle(value: "2")
    }
    
    @IBAction func buttonUc(_ sender: Any) {
        sonucEkle(value: "3")
    }
    
    @IBAction func buttonDort(_ sender: Any) {
        sonucEkle(value: "4")
    }
    
    @IBAction func buttonBes(_ sender: Any) {
        sonucEkle(value: "5")
    }
    
    @IBAction func buttonAltı(_ sender: Any) {
        sonucEkle(value: "6")
    }
    
    @IBAction func buttonYedi(_ sender: Any) {
        sonucEkle(value: "7")
    }
    
    @IBAction func buttonSekiz(_ sender: Any) {
        sonucEkle(value: "8")
    }
    
    @IBAction func buttonDokuz(_ sender: Any) {
        sonucEkle(value: "9")
    }
    
    
    @IBAction func kusuratYap(_ sender: Any) {
        sonucEkle(value: "/")
    }
    
    
}

