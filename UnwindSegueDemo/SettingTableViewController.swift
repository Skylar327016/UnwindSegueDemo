//
//  SettingTableViewController.swift
//  UnwindSegueDemo
//
//  Created by 陳家豪 on 2020/9/17.
//

import UIKit

class SettingTableViewController: UITableViewController {

    @IBOutlet weak var autoLockLabel: UILabel!
    @IBAction func unwindToSelectTimeIntetval(_ unwindSegue: UIStoryboardSegue) {
        if let sourceViewController = unwindSegue.source as? ChangeSettingTableViewController {
            autoLockLabel.text = sourceViewController.selection
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        return 4
//    }
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        if section == 0 {
//          return 2
//        } else if section == 1 {
//            return 1
//        } else if section == 2 {
//            return 3
//        }else if section == 3 {
//            return 2
//        }else {
//            return 0
//        }
//    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "BRIGHTNESS"
        }else {
            return ""
        }

    }


    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let headerView = view as? UITableViewHeaderFooterView else {return}
        headerView.textLabel?.textColor = UIColor.gray
    }
    override func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 3 {
            return 160
        }else {
            return 50
        }
    }
}
