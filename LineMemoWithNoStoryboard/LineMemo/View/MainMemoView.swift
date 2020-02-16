//
//  MainMemoView.swift
//  LineMemo
//
//  Created by MinKyeongTae on 2020/02/16.
//  Copyright © 2020 MinKyeongTae. All rights reserved.
//

import UIKit

class MainMemoView: UIView {
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .lightGray
        return tableView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        addSubviews()
        makeConstraints()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

extension MainMemoView: ViewSetting {
    func addSubviews() {
        addSubview(tableView)
    }

    func makeConstraints() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leftAnchor.constraint(equalTo: self.leftAnchor),
            tableView.rightAnchor.constraint(equalTo: self.rightAnchor),
            tableView.topAnchor.constraint(equalTo: self.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
        ])
    }
}
