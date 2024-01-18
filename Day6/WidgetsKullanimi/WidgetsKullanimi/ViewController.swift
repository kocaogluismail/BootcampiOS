//
//  ViewController.swift
//  WidgetsKullanimi
//
//  Created by İsmail Kocaoglu on 16.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var labelStepper: UILabel!
    @IBOutlet weak var mSwitch: UISwitch!
    @IBOutlet weak var textFieldGirdi: UITextField!
    
    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var labelSlider: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    
    
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelSlider.text = String(Int(slider.value))
        labelStepper.text = String(Int(stepper.value))
        indicator.isHidden = true
        
    }
    
    @IBAction func buttonGoster(_ sender: Any) {
        print("Switch Durum: \(mSwitch.isOn)")
        let secilenIndeks = segmentedControl.selectedSegmentIndex
        let secilenKategori = segmentedControl.titleForSegment(at: secilenIndeks)
        print("Segmented Durum: \(secilenKategori!)")
        print("Slider Durum: \(slider.value)")
        print("Stepper Durumu: \(stepper.value)")
        
    }
    
    
    @IBAction func sliderDegisim(_ sender: UISlider) {
        labelSlider.text = String(Int(sender.value))
    }
    
    
    @IBAction func stepperDegisim(_ sender: UIStepper) {
        labelStepper.text = String(Int(sender.value))
    }
    
    
    @IBAction func buttonUzgun(_ sender: Any) {
        imageView.image = UIImage(named: "sinirli")
    }
    
    @IBAction func buttonMutlu(_ sender: Any) {
        imageView.image = UIImage(named: "mutlu")
    }
    
    @IBAction func buttonYap(_ sender: Any) {
        if let alinanVeri = textFieldGirdi.text {
            labelSonuc.text = alinanVeri
        }
    }
    
    @IBAction func switchDegisim(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch : ON")
        }else {
            print("Switch: OFF")
        }
    }
    
    @IBAction func segmentedDegisim(_ sender: UISegmentedControl) {
        let secilenIndeks = sender.selectedSegmentIndex
        let secilenKategori = sender.titleForSegment(at: secilenIndeks)
        print("Secim: \(secilenKategori!)")
    }
    
    @IBAction func buttonBasla(_ sender: Any) {
        indicator.isHidden = false
        indicator.startAnimating()
    }
    
    @IBAction func buttonDur(_ sender: Any) {
        indicator.isHidden = true
        indicator.stopAnimating()
        
    }
    
}

