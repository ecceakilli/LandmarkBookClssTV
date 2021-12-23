//
//  ViewController.swift
//  LandmarkBookClssTV
//
//  Created by ece on 22.12.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var sirinArray = [srnInfo]()
    var chosenSrn : srnInfo?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        //srnInfo Objects
        let caliskan = srnInfo(stringSrnName: "Çalışkan Şirin", stringSrnDetail: "Biz ekmeğimizin peşindeyiz", imageSrnImage: UIImage(named: "caliskansrn")!)
        let huysuz = srnInfo(stringSrnName: "Huysuz Şirin", stringSrnDetail: "Sabahın köründe kalkan mutlu olabilir mi?", imageSrnImage: UIImage(named: "huysuzsrn")!)
        let neseli = srnInfo(stringSrnName: "Neşeli Şirin", stringSrnDetail: "Kahkahalarım rahatsız edebilir ", imageSrnImage: UIImage(named: "neselisrn")!)
        let sakaci = srnInfo(stringSrnName: "Şakacı Şirin", stringSrnDetail: "Espirilerimi Cem Yılmaz satın almıştır", imageSrnImage: UIImage(named: "sakacisrn")!)
        let baba = srnInfo(stringSrnName: "Şirin Baba", stringSrnDetail: "Şirinleri büyüt okut adam et. Mission completed", imageSrnImage: UIImage(named: "srnbaba")!)
        let sirine = srnInfo(stringSrnName: "Şirine", stringSrnDetail: "Bir adada Star her zaman tek olur", imageSrnImage: UIImage(named: "srne")!)
        let ac = srnInfo(stringSrnName: "Aç Şirin", stringSrnDetail: "Taştan yumuşak olsun yeter. Gerisi teferruat", imageSrnImage: UIImage(named: "acsrn")!)
        navigationItem.title = "ŞİRİNLENDİN"
        
        sirinArray.append(caliskan)
        sirinArray.append(huysuz)
        sirinArray.append(neseli)
        sirinArray.append(sakaci)
        sirinArray.append(baba)
        sirinArray.append(sirine)
        sirinArray.append(ac)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = sirinArray[indexPath.row].srnName
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sirinArray.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSrn = sirinArray[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! ViewControllerDetail?
            destinationVC?.selectedsrn = chosenSrn
            
        }
    }


}

