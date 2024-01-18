//
//  SayfaY.swift
//  Odev4
//
//  Created by İsmail Kocaoglu on 12.01.2024.
//

import UIKit

class SayfaY: UIViewController {

    @IBOutlet weak var labelSayfaY: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func buttonGeri(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
