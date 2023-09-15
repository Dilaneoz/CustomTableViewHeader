//
//  ViewController.swift
//  CustomTableViewHeader
//
//  Created by Opendart Yazılım ve Bilişim Hizmetleri on 19.03.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
 

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    //ilgili tableview ın kaç kategori şeklinde görüneceğini bize gösterir
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "maincell",for: indexPath) as! MainTableViewCell
        return cell
    }
    
    //gizli bir for kategoriler için çalışacak
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let sectionCell = Bundle.main.loadNibNamed("CustomizeTableViewCell", owner: self,options: nil)?.first as! CustomizeTableViewCell // loadNibNamed e xib dosyasını adı yazılır. ".first" bu da ilk elemansa eğer anlamına gelir. bu fonksiyon her bir cell in CustomizeTableViewCell olup olmadığını kontrol edicek
        
        if section == 0 { // hangi section da olduğum bilgisi
            sectionCell.customHeaderTitle.text = " Şarkılar"
        }
        
        if section == 1 {
            sectionCell.customHeaderTitle.text = " Albümler"
        }
        
        if section == 2 {
            sectionCell.customHeaderTitle.text = " Playlist"
        }
        
        if section == 3 {
            sectionCell.customHeaderTitle.text = " Soundrack"
        }
        return sectionCell
    }

}

