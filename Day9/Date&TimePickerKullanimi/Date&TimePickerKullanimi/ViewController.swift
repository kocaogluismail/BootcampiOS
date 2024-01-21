//
//  ViewController.swift
//  Date&TimePickerKullanimi
//
//  Created by İsmail Kocaoglu on 21.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTarih: UITextField!
    @IBOutlet weak var tfSaat: UITextField!
    
    var datePicker:UIDatePicker?
    var timePicker:UIDatePicker?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker = UIDatePicker()
        datePicker?.datePickerMode = .date
        tfTarih.inputView = datePicker
        
        timePicker = UIDatePicker()
        timePicker?.datePickerMode = .time
        tfSaat.inputView = timePicker
        
        
        if #available(iOS 13.4, *) {
            datePicker?.preferredDatePickerStyle = .wheels
            timePicker?.preferredDatePickerStyle = .wheels
        }
        
        let dokunmaAlgilama = UITapGestureRecognizer(target: self, action: #selector(dokunmaAlgilamaMetod))
        view.addGestureRecognizer(dokunmaAlgilama)
        
        datePicker?.addTarget(self, action: #selector(tarihGoster(uiDatePicker: )), for: .valueChanged)
        
        timePicker?.addTarget(self, action: #selector(saatGoster(uiDatePicker: )), for: .valueChanged)
        
    }

    @objc func dokunmaAlgilamaMetod() {
        print("Ekrana Dokunldu")
        view.endEditing(true)
    }
    @objc func tarihGoster(uiDatePicker:UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "MM/dd/yyyy"
        let alinanTarih = format.string(from:uiDatePicker.date)
        tfTarih.text = alinanTarih
    }
    @objc func saatGoster(uiDatePicker:UIDatePicker) {
        let format = DateFormatter()
        format.dateFormat = "HH:mm"
        let alinanSaat = format.string(from:uiDatePicker.date)
        tfSaat.text = alinanSaat
    }    }

