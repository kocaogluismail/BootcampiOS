//
//  SayfaA.swift
//  Odev4
//
//  Created by İsmail Kocaoglu on 12.01.2024.
//

import UIKit

class SayfaA: UIViewController {

    @IBOutlet weak var labelSayfaA: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func buttonGoB(_ sender: Any) {
        performSegue(withIdentifier: "sayfaBGecis", sender: nil)
    }
    

}
