//
//  ViewController.swift
//  dict_array_alamof
//
//  Created by JIJO G OOMMEN on 13/08/19.
//  Copyright © 2019 JIJO G OOMMEN. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    @IBOutlet var tableviewoutlet: UITableView!
    
    var contact_array = [Contacts]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getdata()
    }

    func getdata(){
        
    let url_req = "https://api.androidhive.info/contacts/"
    
    Alamofire.request(url_req).responseJSON { (response) in
    
        let maindictionary = response.result.value as! NSDictionary
        
        let resultbase = Result_base(dictionary: maindictionary)
        
        
        
        self.contact_array = (resultbase!.contacts!)
        
        DispatchQueue.main.async {
            
        self.tableviewoutlet.reloadData()
            
        }
            
        
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contact_array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableviewoutlet.dequeueReusableCell(withIdentifier: "TableViewCellid")as! TableViewCell
        
        cell.namelabel.text = String(contact_array[indexPath.row].name!)
        cell.emaillabel.text = String(contact_array[indexPath.row].email!)
        cell.genderlabel.text = String(contact_array[indexPath.row].gender!)
        cell.homelabel.text = String((contact_array[indexPath.row].phone?.home!)!)
        cell.phonelabel.text = String((contact_array[indexPath.row].phone?.mobile!)!)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    

}

 
