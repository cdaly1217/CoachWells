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
@IBAction func addOption(_ sender: Any) {
}


@IBAction func editButton(_ sender: Any) {
}


    

    @IBOutlet weak var rosterTableView: UITableView!
    

    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
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
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gameCell", for: indexPath) as! PlayerCell
        cell.labelPlayer.text = "\(indexPath.row + 1)"
        cell.nameButton.setTitle("Christine", for: .normal)
        
        
        return cell
    }


}

