//
//  SettingTableViewController.swift
//  UnwindSegueDemo
//
//  Created by 陳家豪 on 2020/9/17.
//

import UIKit

class SettingTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
          return 2
        } else if section == 1 {
            return 1
        } else if section == 2 {
            return 3
        }else if section == 3 {
            return 2
        }else {
            return 0
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "BRIGHTNESS"
        }else {
            return ""
        }
        
    }
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        if section == 0 {
            return "Automatically adapt iPhone display based on ambient lighting conditions to make colours appeat consistent in different environment."
        } else if section == 2 {
            return "Automatically lock and unlock your iPhone when you close and open the iPhone cover."
        } else {
            return ""
        }
    }
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }

}
