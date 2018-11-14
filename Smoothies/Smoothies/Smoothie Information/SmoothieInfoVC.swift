//
//  SmoothieInfoVC.swift
//  Smoothies
//
//  Created by Kedar Rao on 11/11/18.
//  Copyright © 2018 Francis Wethington. All rights reserved.
//

import UIKit

private let kSMOOTHIETITLECELLID = "SMOOTHIETITLECELLID"
private let kSMOOTHIERATINGCELLID = "SMOOTHIERATINGCELLID"
private let kSMOOTHIEINGREDIENTSCELLID = "SMOOTHIEINGREDIENTSCELLID"
private let kSMOOTHIEDIRECTIONSCELLID = "SMOOTHIEDIRECTIONSCELLID"
private let kSMOOTHIENUTRITIONCELLID = "SMOOTHIENUTRITIONCELLID"

class SmoothieInfoVC: UIViewController {
    
    @IBOutlet weak var SmoothieInfoTableView: UITableView!
    @IBOutlet weak var navBar: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        navBar.topItem?.title = "Smoothie Name"
        setupUI()
    }
    
    func setupUI() {
        SmoothieInfoTableView.delegate = self
        SmoothieInfoTableView.dataSource = self
        SmoothieInfoTableView.register(UINib.init(nibName: "SmoothieTitleCell", bundle: Bundle.main), forCellReuseIdentifier: kSMOOTHIETITLECELLID)
        SmoothieInfoTableView.register(UINib.init(nibName: "SmoothieRatingCell", bundle: Bundle.main), forCellReuseIdentifier: kSMOOTHIERATINGCELLID)
        SmoothieInfoTableView.register(UINib.init(nibName: "SmoothieIngredientsCell", bundle: Bundle.main), forCellReuseIdentifier: kSMOOTHIEINGREDIENTSCELLID)
        SmoothieInfoTableView.register(UINib.init(nibName: "SmoothieDirectionsCell", bundle: Bundle.main), forCellReuseIdentifier: kSMOOTHIEDIRECTIONSCELLID)
        SmoothieInfoTableView.register(UINib.init(nibName: "SmoothieNutritionCell", bundle: Bundle.main), forCellReuseIdentifier: kSMOOTHIENUTRITIONCELLID)
    }
    
    @IBAction func randomRecipe(_ sender: Any) {
    }
    
}

extension SmoothieInfoVC: UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section == 0 || section == 1) {
            return 1
        } else if (section == 2) {
            return 1
            // return number of ingredients
        } else if (section == 3) {
            return 1 //return nuber of directions
        } else {
            return 5
            //servingSize, calories, fat, carbs, protein
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.section == 0) {
            let cell = tableView.dequeueReusableCell(withIdentifier: kSMOOTHIETITLECELLID) as! SmoothieTitleCell
            return cell
        } else if (indexPath.section == 1) {
            let cell = tableView.dequeueReusableCell(withIdentifier: kSMOOTHIERATINGCELLID) as! SmoothieRatingCell
            return cell
        } else if (indexPath.section == 2) {
            let cell = tableView.dequeueReusableCell(withIdentifier: kSMOOTHIEINGREDIENTSCELLID) as! SmoothieIngredientsCell
            return cell
        } else if (indexPath.section == 3) {
            let cell = tableView.dequeueReusableCell(withIdentifier: kSMOOTHIEDIRECTIONSCELLID) as! SmoothieDirectionsCell
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: kSMOOTHIENUTRITIONCELLID) as! SmoothieNutritionCell
            return cell
        }
    }
    
    
}

extension SmoothieInfoVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if (section == 0) {
            return "Picture"
        } else if (section == 1) {
            return "Rating"
        } else if (section == 2) {
            return "Ingredients"
        } else if (section == 3) {
            return "Directions"
        } else {
            return "Nutrition Info"
        }
    }
}
