//
//  ChangeSettingTableViewController.swift
//  UnwindSegueDemo
//
//  Created by 陳家豪 on 2020/9/17.
//

import UIKit

class ChangeSettingTableViewController: UITableViewController {
    let selections = ["30 Seconds", "1 Minute", "2 Minutes", "3 Minutes", "4 Minutes", "5 Minutes", "Never"]
    var selection = ""
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        selection = selections[indexPath.row]
        let cell = tableView.cellForRow(at: indexPath)
        clearCheckMark(from: tableView)
        cell?.accessoryView = UIImageView(image: UIImage(systemName: "checkmark"))
    }
    func clearCheckMark(from tableView: UITableView){
        for i in 0...6 {
            let indexPath = IndexPath(row: i, section: 0)
            let cell = tableView.cellForRow(at: indexPath)
            cell?.accessoryView = nil
        }
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) {
//            cell.accessoryView = UIImageView(image: UIImage(systemName: "checkmark"))
//            selection = selections[indexPath.row]
//        }
//    }
}
