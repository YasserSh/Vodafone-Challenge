//
//  ViewController.swift
//  VodafoneChallenge
//
//  Created by Vodafone Mac on 27/09/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var airlineTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Airlines"
        
        airlineTableView.dataSource = self
        airlineTableView.delegate = self
        
        airlineTableView.register(UINib(nibName: "AirlineTableViewCell", bundle: nil), forCellReuseIdentifier: "airlineTableCell")
        
    }

    @IBAction func onClickSearch(_ sender: Any) {
        
    }
    
    
    
    
}

extension ViewController: UITableViewDelegate{
    
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = airlineTableView.dequeueReusableCell(withIdentifier: "airlineTableCell", for: indexPath) as! AirlineTableViewCell
        
        let airlines = ["airline1 akjshd wjhdqjfqwjfqwfwq kjqwh fkqwjf kjwh fjqhw fkq fkqjw fkqj hqw f", "airline2", "airline3"]
        
        cell.airlineName.text = airlines [indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        airlineTableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "goToDetails", sender: self)
    }
    
}

