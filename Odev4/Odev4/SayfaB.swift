//
//  SayfaB.swift
//  Odev4
//
//  Created by İsmail Kocaoglu on 12.01.2024.
//

import UIKit

class SayfaB: UIViewController {

    @IBOutlet weak var labelSayfaB: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonGoBy(_ sender: Any) {
        performSegue(withIdentifier: "sayfaByGecis", sender: nil)
    }
    


}
