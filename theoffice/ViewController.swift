//
//  ViewController.swift
//  theoffice
//
//  Created by Eda Dilek on 11.02.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var theofficeLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    var myOffice = [office]()
    var chosenOffice : office?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //Office Objects
        
        let andy = office(officeName: "Andy", officeJob: "Salesman", officeImage: UIImage(named: "andy")!)
        
         let angela = office(officeName: "Angela", officeJob: "Party Planning Committee", officeImage: UIImage(named: "angela")!)
        
         let creed = office(officeName: "Creed", officeJob: "Quality Assurance", officeImage: UIImage(named: "creed")!)
        
         let dwight = office(officeName: "Dwight", officeJob: "Upper-level salesman", officeImage: UIImage(named: "dwight")!)
        
         let jim = office(officeName: "Jim", officeJob: "Assistant Regional Manager", officeImage: UIImage(named: "jim")!)
        
        let kelly = office(officeName: "Kelly", officeJob: "Customer Service", officeImage: UIImage(named: "kelly")!)
        
        let kevin = office(officeName: "Kevin", officeJob: "Accountant", officeImage: UIImage(named: "kevin")!)
        
        let meredith = office(officeName: "Meredith", officeJob: "Business Ethics", officeImage: UIImage(named: "meredith")!)
        
        let michael = office(officeName: "Michael", officeJob: "Manager", officeImage: UIImage(named: "michael")!)
        
        let oscar = office(officeName: "Oscar", officeJob: "Accountant", officeImage: UIImage(named: "oscar")!)
        
        let pam = office(officeName: "Pam", officeJob: "Receptionist ", officeImage: UIImage(named: "pam")!)
        
        let phyllis = office(officeName: "Phyllis", officeJob: "Saleswoman", officeImage: UIImage(named: "phyllis")!)
        
        let ryan = office(officeName: "Ryan", officeJob: "Junior Salesman", officeImage: UIImage(named: "ryan")!)
        
        let stanley = office(officeName: "Stanley", officeJob: "Salesman", officeImage: UIImage(named: "stanley")!)
        
        let toby = office(officeName: "Toby", officeJob: "Human Resource Manager", officeImage: UIImage(named: "toby")!)
        
        
        
        myOffice.append(andy)
        myOffice.append(angela)
        myOffice.append(creed)
        myOffice.append(dwight)
        myOffice.append(jim)
        myOffice.append(kelly)
        myOffice.append(kevin)
        myOffice.append(meredith)
        myOffice.append(michael)
        myOffice.append(oscar)
        myOffice.append(pam)
        myOffice.append(phyllis)
        myOffice.append(ryan)
        myOffice.append(stanley)
        myOffice.append(toby)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myOffice.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = myOffice[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenOffice = myOffice[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedOffice = chosenOffice
        }
    }


}

