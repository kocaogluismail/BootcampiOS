//
//  KisilerDaRepository.swift
//  Odev7
//
//  Created by İsmail Kocaoglu on 23.01.2024.
//

import Foundation
import RxSwift

class KisilerDaRepository {
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    let db:FMDatabase?
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("toDoList.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func kaydet(kisi_ad:String) {
        db?.open()
        

        do{
            try db!.executeUpdate("INSERT INTO kisiler (kisi_ad) VALUES (?)", values: [kisi_ad])
            
        }catch{
            print(error.localizedDescription)
        }
        db?.close()
    }
    func guncelle(kisi_id:Int,kisi_ad:String) {
        db?.open()
        

        do{
            try db!.executeUpdate("UPDATE kisiler SET kisi_ad = ? WHERE kisi_id = ?", values: [kisi_ad,kisi_id])
            
        }catch{
            print(error.localizedDescription)
        }
        db?.close()
    }
    func sil(kisi_id:Int){
        db?.open()
        

        do{
            try db!.executeUpdate("DELETE FROM kisiler WHERE kisi_id = ? ", values: [kisi_id])
            kisileriYukle()
        }catch{
            print(error.localizedDescription)
        }
        db?.close()
        
    }
    func ara(aramaKelimesi:String){
        
             db?.open()
             var liste = [Kisiler]()

             do{
                 let rs = try db!.executeQuery("SELECT * FROM kisiler WHERE kisi_ad like '%\(aramaKelimesi)%'", values: nil)
                 
                 while rs.next() {
                     let kisi = Kisiler(kisi_id: Int(rs.string(forColumn: "kisi_id"))!, kisi_ad: rs.string(forColumn: "kisi_ad")!)
                     
                     liste.append(kisi)
                 }
                 kisilerListesi.onNext(liste)
             }catch{
                 print(error.localizedDescription)
             }
             db?.close()
    }
    func kisileriYukle(){
   
        db?.open()
        var liste = [Kisiler]()

        do{
            let rs = try db!.executeQuery("SELECT * FROM kisiler", values: nil)
            
            while rs.next() {
                let kisi = Kisiler(kisi_id: Int(rs.string(forColumn: "kisi_id"))!, kisi_ad: rs.string(forColumn: "kisi_ad")!)
                
                liste.append(kisi)
            }
            kisilerListesi.onNext(liste)
        }catch{
            print(error.localizedDescription)
        }
        db?.close()
    }
}
