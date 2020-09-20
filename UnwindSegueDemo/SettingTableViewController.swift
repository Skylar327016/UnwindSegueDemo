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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let controller = segue.destination as? ChangeSettingTableViewController else {return}
        controller.selection = self.autoLockLabel.text
    }
}
