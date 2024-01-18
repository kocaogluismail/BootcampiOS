//
//  ViewController.swift
//  TabBarKullanimi
//
//  Created by İsmail Kocaoglu on 12.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let tabItems = tabBarController?.tabBar.items {
            let anasayfaItem = tabItems[0]
            let ayarlarItem = tabItems[1]
            anasayfaItem.badgeValue = "3"
            ayarlarItem.badgeValue = "Yeni"
        }
        
      
         let appearance = UITabBarAppearance()
         appearance.backgroundColor = UIColor.systemIndigo
         
         renkDegistir(itemAppearance: appearance.stackedLayoutAppearance)
         renkDegistir(itemAppearance: appearance.inlineLayoutAppearance)
         renkDegistir(itemAppearance: appearance.compactInlineLayoutAppearance)
         
         tabBarController?.tabBar.standardAppearance = appearance
         tabBarController?.tabBar.scrollEdgeAppearance = appearance
         
         
         }
    
         func renkDegistir(itemAppearance : UITabBarItemAppearance) {
         //secili durum
         itemAppearance.selected.iconColor = UIColor.systemOrange
         itemAppearance.selected.titleTextAttributes = [.foregroundColor:UIColor.systemOrange]
         itemAppearance.selected.badgeBackgroundColor = UIColor.systemMint
         //Secili olmayan durum
         itemAppearance.normal.iconColor = UIColor.white
         itemAppearance.normal.titleTextAttributes = [.foregroundColor:UIColor.white]
         itemAppearance.normal.badgeBackgroundColor = UIColor.lightGray
         }
         
        
    

}

