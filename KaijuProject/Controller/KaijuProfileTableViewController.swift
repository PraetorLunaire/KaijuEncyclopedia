//
//  KaijuProfileTableViewController.swift
//  KaijuProject
//
//  Created by Rubens Paulico on 25/06/19.
//  Copyright © 2019 Rubens Paulico. All rights reserved.
//

import UIKit

class KaijuProfileTableViewController: UITableViewController {
    @IBOutlet weak var kaijuProfileImage: UIImageView!
    @IBOutlet weak var kaijuProfileName: UIImageView!
    
    var selectedKaijuIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        refreshInterface()
    }
    
    func refreshInterface () {
        
        let selectedKaiju = Model.instance.kaijuMonsters[selectedKaijuIndex]
        
        kaijuProfileImage.image = selectedKaiju.picture
        kaijuProfileName.image = selectedKaiju.kaijuButtonName
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 4
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        switch section {
            
        case 0:
            return 1
            
        case 1:
            return 1
            
        case 2:
            return 1
            
        default:
            
            return Model.instance.kaijuMonsters[selectedKaijuIndex].appearsIn.count
        }
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
//        var sectionIndexBackgroundColor: UIColor as? { get set }
        
        switch section{
            
        case 0:
                return "Name"
            
        case 1:
            return "First Appearance"
            
        case 2:
            return "Description"
            
        default:
            return "Appears in"
            
        }
        
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        (view as! UITableViewHeaderFooterView).backgroundView?.backgroundColor = #colorLiteral(red: 0.01085649896, green: 0.0337148346, blue: 0.1000320986, alpha: 1)
        (view as! UITableViewHeaderFooterView).textLabel?.textColor = #colorLiteral(red: 0.01960784314, green: 0.9411764706, blue: 0.9529411765, alpha: 1)
    }
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        
        let selectedKaijuInfo = Model.instance.kaijuMonsters[selectedKaijuIndex]
        
        switch indexPath.section {
            
        case 0:
            
            let kaijuNameCell = tableView.dequeueReusableCell(withIdentifier: "kaijuProfileCellName", for: indexPath) as! KaijuProfileTableViewCell
            
            kaijuNameCell.kaijuCellProfileInfo.text = selectedKaijuInfo.name
            
            kaijuNameCell.selectionStyle = .none
            
            return kaijuNameCell
            
        case 1:
            let kaijuFirstAppearanceCell = tableView.dequeueReusableCell(withIdentifier: "kaijuProfileCellFirstAppears", for: indexPath) as! KaijuProfileTableViewCell
            
            kaijuFirstAppearanceCell.kaijuCellProfileInfo.text = selectedKaijuInfo.firstAppearance
            
            kaijuFirstAppearanceCell.selectionStyle = .none
            
            return kaijuFirstAppearanceCell
            
        case 2:
            let kaijuDescriptionCell = tableView.dequeueReusableCell(withIdentifier: "kaijuProfileCellDescription", for: indexPath) as! KaijuProfileTableViewCell
            
            kaijuDescriptionCell.kaijuCellProfileInfo.text = selectedKaijuInfo.description
            
            kaijuDescriptionCell.selectionStyle = .none
            
            return kaijuDescriptionCell
            
            
            
        default:
            let kaijuAppearsInCell = tableView.dequeueReusableCell(withIdentifier: "kaijuProfileCellAppearsIn", for: indexPath) as! KaijuProfileTableViewCell
            
            kaijuAppearsInCell.kaijuCellProfileInfo.text = selectedKaijuInfo.appearsIn[indexPath.row]
            
            kaijuAppearsInCell.selectionStyle = .none
            
            return kaijuAppearsInCell
            
            
            
        }

        // Configure the cell...

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
