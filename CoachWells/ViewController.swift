//
//  ViewController.swift
//  CoachWells
//
//  Created by  on 9/20/18.
//  Copyright © 2018 Daly's.Apps. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    
    
    
    var names: [String] = []

    @IBOutlet weak var rosterTableView: UITableView!
    

    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }
    @IBAction func addOption(_ sender: Any) {
        // create alert with textfield
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.default, handler: nil))
        //2. Add the text field. You can configure it however you need.
        alert.addTextField { (textField) in
            textField.text = "Some default text"
        }
        // 3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
            print("Text field: \(textField?.text)")
        }))
        
        
        self.present(alert, animated: true, completion: nil)
        
        
        
        
        names.append("Christine")
        rosterTableView.reloadData()
    }
    
    
    @IBAction func editButton(_ sender: Any) {
    }
    
    @IBAction func buttonNameAction(_ sender: UIButton) {
        
        
    }
    @IBAction func buttonTimeAction(_ sender: UIButton) {
        let timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerGoing), userInfo: nil, repeats: true)
// Timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
//        buttonTimeAction.isEnabled = false
    }
    @objc func timerGoing()
    {
        print("timer is on")
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gameCell", for: indexPath) as! PlayerCell
        let name = names[indexPath.row]
        cell.labelPlayer.text = "\(indexPath.row + 1)"
        cell.nameButton.setTitle(name, for: .normal)
        
        
        return cell
    }


}

