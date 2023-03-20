//
//  Model.swift
//  RM_portfolio
//
//  Created by 황경원 on 2023/03/20.
//

import Foundation

struct ContestModel: Hashable {
    let id = UUID()
    let title: String
    let startDate: Date
    let endDate: Date
}
