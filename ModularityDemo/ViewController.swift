//
//  ViewController.swift
//  ModularityDemo
//
//  Created by Bryan A Bolivar M on 3/22/19.
//  Copyright © 2019 BolivarBryan. All rights reserved.
//

import UIKit
import ModularityStyle

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let datasource = ["Bryan", "Andres", "Mary", "Dan"]

    let paragraphs = (0...1).map { "\($0) - Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."}

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}

// MARK: - Tableview Protocols

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cellIdentifier = "ContactTableViewCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ContactTableViewCell
            cell.data = datasource[indexPath.row]
            return cell
        case 1:
            let cellIdentifier = "ParagraphTableViewCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! ParagraphTableViewCell
            cell.textLabel?.text = paragraphs[indexPath.row]
            styleLabelParagraph(cell.textLabel!)
            return cell
        default:
            fatalError("Section (\(indexPath.section)) is not configured")
        }
    }
}

extension ViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return datasource.count
        case 1: return 1
        default: return 0
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}
