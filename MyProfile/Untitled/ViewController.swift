//
//  ViewController.swift
//  Untitled
//
//  Created by Riya Baphna on 9/11/19.
//  Copyright © 2019 Riya Baphna. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
   
    
    //MARK: Calendar
    @IBOutlet weak var Calendar: UICollectionView!
    
    @IBOutlet weak var MonthLabel: UILabel!
    
    let Months = ["January", "February", "March", "April", "May", "June", "July", "August","September","October","November","December"]
    let DaysOfMonth = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
    var DaysInMonths = [31,28,31,30,31,30,31,31,30,31,30,31]
    var currentMonth = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    
    
    
    
    @IBAction func PreviousMonth(_ sender: Any) {
    }
    @IBAction func NextMonth(_ sender: Any) {
    }
    //MARK: Properties

    @IBOutlet weak var nameTextField2: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var WelcomeLabel: UILabel!
    @IBOutlet weak var LoginButton: UIButton!
    @IBOutlet weak var OrLabel: UILabel!
    @IBOutlet weak var SignUpButton: UIButton!
   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }



}




