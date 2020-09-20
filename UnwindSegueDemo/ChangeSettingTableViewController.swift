//
//  ChangeSettingTableViewController.swift
//  UnwindSegueDemo
//
//  Created by 陳家豪 on 2020/9/17.
//

import UIKit

class ChangeSettingTableViewController: UITableViewController {
    
    let selections = ["30 Seconds", "1 Minute", "2 Minutes", "3 Minutes", "4 Minutes", "5 Minutes", "Never"]
    var selection: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return selections.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = selections[indexPath.row]
        if selection == selections[indexPath.row]{
            cell.accessoryType = .checkmark
        }else {
            cell.accessoryType = .none
        }
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selection = selections[indexPath.row]
        for cell in tableView.visibleCells{
            cell.accessoryType = .none
        }
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        tableView.cellForRow(at: indexPath)?.setSelected(false, animated: true)

    }

//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let controller = segue.destination as? SettingTableViewController else {return}
//        controller.autoLockLabel.text = selection
//    }
}
