//
//  FirstViewController.swift
//  m14
//
//  Created by Кирилл Кошкарёв on 18.08.2023.
//

import UIKit

class FirstViewController: UIViewController {
    
    let cellWithImage = "cellWithImage"
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: CGRect.zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .singleLine
        return tableView
    }()
    
    let dataWithImages: [CellWithImageViewModel] = [
        CellWithImageViewModel(
            text: Constants.CountriesNames.firstCountryName,
            image: Constants.CountriesImages.firstCountryImage ?? UIImage()
        ),
        CellWithImageViewModel(
            text: Constants.CountriesNames.secondCountryName,
            image: Constants.CountriesImages.secondCountryImage ?? UIImage()
        ),
        CellWithImageViewModel(
            text: Constants.CountriesNames.thirdCountryName,
            image: Constants.CountriesImages.thirdCountryImage ?? UIImage()
        ),
        CellWithImageViewModel(
            text: Constants.CountriesNames.fourthCountryName,
            image: Constants.CountriesImages.fourthCountryImage ?? UIImage()
        ),
        CellWithImageViewModel(
            text: Constants.CountriesNames.fifthCountryName,
            image: Constants.CountriesImages.fifthCountryImage ?? UIImage()
        )
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(CellWithImage.self, forCellReuseIdentifier: "cellWithImage")
        tableView.dataSource = self
        tableView.delegate = self
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        view.addSubview(tableView)
    }
    
    private func setupConstraints() {
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
    }

}

extension FirstViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataWithImages.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellWithImage) as? CellWithImage
        let viewModel = dataWithImages[indexPath.row]
        cell?.configure(viewModel)
        return cell ?? UITableViewCell()
    }
}

extension FirstViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 125
    }
}
