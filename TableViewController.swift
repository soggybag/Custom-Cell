//
//  TableViewController.swift
//  Custom Cell
//
//  Created by mitchell hudson on 10/12/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, CustomCellProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell

        cell.myLabel.text = "Hello World"
        cell.mySwitch.isOn = false
        cell.delegate = self
        cell.callback = handleCallback
        
        return cell
    }
    
    func handleCallback(cell: CustomTableViewCell) {
        cell.myLabel.text = "Switch is \(cell.mySwitch.isOn)"
    }
    
    func switchChanged(cell: CustomTableViewCell) {
        cell.myLabel.text = "Cell changed: \(cell.mySwitch.isOn)"
    }
    
    func segmentChanged(cell: CustomTableViewCell) {
        let segid = cell.segmentedControl.selectedSegmentIndex
        switch segid {
        case 0:
            // cell.backgroundColor = UIColor.red
            cell.segmentedControl.tintColor = UIColor.red
        case 1:
            // cell.backgroundColor = UIColor.green
            cell.segmentedControl.tintColor = UIColor.green
        case 2:
            // cell.backgroundColor = UIColor.blue
            cell.segmentedControl.tintColor = UIColor.blue
        default:
            print("????")
        }
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
