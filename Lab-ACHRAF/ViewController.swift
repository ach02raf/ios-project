//
//  ViewController.swift
//  Lab-ACHRAF
//
//  Created by Tekup University 7 on 14/2/2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource ,UITableViewDelegate{
    let film = Film()
    var  films = [Film]()
    @IBOutlet var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        films = [film,film,film,film]
        table.delegate=self
        table.dataSource=self
      

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          
           return films.count
       }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue a reusable cell from the table view
        let cellule = tableView.dequeueReusableCell(withIdentifier: "cellulle", for: indexPath)as! Cellule
        cellule.title?.text = films[indexPath.row].titlefilm
        cellule.dirname?.text = films[indexPath.row].dirnamefilm
        cellule.prodname?.text = films[indexPath.row].prodnamefilm
        cellule.date?.text = films[indexPath.row].datefilm
        cellule.dscrip?.text = films[indexPath.row].descfilm

        return cellule
    }
   /* private  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView.cellForRow(at: indexPath as IndexPath)
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
        performSegue(withIdentifier: "mySegue", sender: cell)
    }
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        print(indexPath.section)
        print(indexPath)

        performSegue(withIdentifier: "mySegue", sender: self)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue" {
            if let destinationVC = segue.destination as? ViewController {
                // Configure the destination view controller here
            }
        }
    }*/

    struct Film{
        let titlefilm = "A new Hope"
        let dirnamefilm = "George lucas"
        let prodnamefilm = "Garry Kurtz"
        let datefilm = "1975/05/25"
        let descfilm = "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
    }	

}

