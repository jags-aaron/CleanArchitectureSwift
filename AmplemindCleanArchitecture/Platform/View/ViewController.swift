//
//  ViewController.swift
//  AmplemindCleanArchitecture
//
//  Created by Aaron García on 10/21/18.
//  Copyright © 2018 Amplemind. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, MainView {
    
    var mPresenter:MainViewPresenter!
    var countries = [Country]()
    
    @IBOutlet weak var countryTableView: UITableView!
    
    func setPresenter(_ mainViewPresenter: MainViewPresenter){
        self.mPresenter = mainViewPresenter
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countryTableView.tableFooterView = UIView()
        countryTableView.dataSource = self
        countryTableView.accessibilityIdentifier = "countriesTableView"
        countryTableView.accessibilityLabel = "countriesTableView"
        
        mPresenter.attachView(view: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = countryTableView.dequeueReusableCell(withIdentifier: "countryCell", for: indexPath)as! CountryTableViewCell
        
        let country: Country = countries[indexPath.item]
        cell.countryTitleLabel.text = country.name
        
        return cell
    }
    
    func showError(error: String) {
        print("showError")
    }
    
    func itemListClick() {
        print("itemListClick")
    }
    
    func showList(countries: [Country]) {
        print("showList")
        self.countries = countries
        countryTableView.reloadData()
    }
    
    @IBAction func onButtonGetData(_ sender: Any) {
        mPresenter.getCountries()
    }
    
}

