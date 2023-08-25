//
//  SecondViewController.swift
//  m14
//
//  Created by Кирилл Кошкарёв on 23.08.2023.
//

import UIKit

class SecondViewController: UIViewController {
    
    let newsRecord = "newsRecord"
    
    private lazy var newsTableView: UITableView = {
        let tableView = UITableView(frame: CGRect.zero, style: .grouped)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .singleLine
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newsTableView.register(NewsRecord.self, forCellReuseIdentifier: "newsRecord")
        newsTableView.dataSource = self
        newsTableView.delegate = self
        setupViews()
        setupConstraints()
        
    }
    
    private func setupViews() {
        view.addSubview(newsTableView)
    }
    
    private func setupConstraints() {
        newsTableView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        newsTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        newsTableView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        newsTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        newsTableView.contentInset = UIEdgeInsets(top: -50, left: 0, bottom: 0, right: 0)
    }
    
}

extension SecondViewController:
    UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Constants.models.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: newsRecord) as? NewsRecord
        let viewModel = Constants.models[indexPath.row]
        cell?.configure(viewModel)
        return cell ?? UITableViewCell()
    }
}

extension SecondViewController:
    UITableViewDelegate {
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 100
        }
    }
