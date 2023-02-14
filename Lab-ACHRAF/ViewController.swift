//
//  ViewController.swift
//  Lab-ACHRAF
//
//  Created by Tekup University 7 on 14/2/2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource ,UITableViewDelegate{
  
   

    

    @IBOutlet var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate=self
        table.dataSource=self
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cellReuseIdentifier")

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           // Return the number of rows for the table view.
           return myData.count
       }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue a reusable cell from the table view
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier", for: indexPath)

        // Get the data for the current row
        let rowData = myData[indexPath.row]

        // Set the text label of the cell to the current row's data
        cell.textLabel?.text = rowData

        return cell
    }
    let myData = ["Apples", "Bananas", "Oranges", "Pears"]
    struct Movie{
        let title = "A new Hope"
        let directorName = "George lucas"
        let producerName = "Garry Kurtz"
        let releasedate = "1975/05/25"
        let description = "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
    }	

}

