//
//  DetailViewController.swift
//  Lab-ACHRAF
//
//  Created by Tekup University 7 on 17/2/2023.
//

import SwiftUI

class DetailViewController: UIViewController {
    
   
    @IBOutlet var titlename: UILabel!
    @IBOutlet var prodname: UILabel!
    @IBOutlet var discr: UILabel!
    @IBOutlet var dirname: UILabel!
    @IBOutlet var date: UILabel!
    var film: Film?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titlename.text=film?.title
        prodname.text=film?.producer
        discr.text=film?.openingCrawl
        date.text=film?.releaseDate
        dirname.text=film?.director
    }
    
}
