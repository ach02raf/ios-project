//
//  ViewController.swift
//  Lab-ACHRAF
//
//  Created by Tekup University 7 on 14/2/2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource ,UITableViewDelegate{
    
    @IBOutlet var table: UITableView!
    
    var films = [Film]()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://swapi.dev/api/films/")!

        URLSession.shared.fetchData(for: url) { (result: Result<FilmsResponse, Error>) in
            switch result {
            case .success(let response):
                print(response.results)
                DispatchQueue.main.async{
                self.films = response.results
                    self.table.reloadData() 
                }
                // Reload the table view to display the data
            case .failure(let error):
                print("Error fetching data: \(error.localizedDescription)")
            }
        }


        
      

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          
           return films.count
       }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue a reusable cell from the table view
        let cellule = tableView.dequeueReusableCell(withIdentifier: "cellulle", for: indexPath)as! Cellule
        cellule.title?.text = films[indexPath.row].title
        cellule.dirname?.text = films[indexPath.row].director
        cellule.prodname?.text = films[indexPath.row].producer
        cellule.date?.text = films[indexPath.row].releaseDate
        cellule.dscrip?.text = films[indexPath.row].openingCrawl

        return cellule
    }
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          performSegue(withIdentifier: "mySegueDetais", sender: self)
      }
      
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegueDetais" {
            if let indexPath = table.indexPathForSelectedRow, let detailViewController = segue.destination as? DetailViewController {
                detailViewController.film = films[indexPath.row]
            }
        }
    }

    
}



