//
//  ViewController.swift
//  Odev4
//
//  Created by İsmail Kocaoglu on 12.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelAnasayfa: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonGoA(_ sender: Any) {
    performSegue(withIdentifier: "sayfaAGecis", sender: nil)
    }
    
    @IBAction func buttonGoX(_ sender: Any) {
        performSegue(withIdentifier: "sayfaXGecis", sender: nil)
    }
    
}

