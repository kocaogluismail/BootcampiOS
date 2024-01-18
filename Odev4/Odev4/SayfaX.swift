//
//  SayfaX.swift
//  Odev4
//
//  Created by İsmail Kocaoglu on 12.01.2024.
//

import UIKit

class SayfaX: UIViewController {

    @IBOutlet weak var labelSayfaX: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonGoY(_ sender: Any) {
        performSegue(withIdentifier: "sayfaYGecis", sender: nil)
    }
    
 
}
