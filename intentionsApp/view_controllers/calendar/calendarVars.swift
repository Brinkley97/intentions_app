//
//  CalendarVars.swift
//  Calendar
//
//  Created by Tre' Jeter on 4/08/20.
//  Copyright © 2020 Tre' Jeter. All rights reserved.
//

import Foundation


let date = Date()
let calendar = Calendar.current

let day = calendar.component(.day , from: date)
var weekday = calendar.component(.weekday, from: date) - 1
var month = calendar.component(.month, from: date) - 1
var year = calendar.component(.year, from: date)
 
