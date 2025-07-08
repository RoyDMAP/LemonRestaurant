//
//  Validation.swift
//  LemonRestaurant
//
//  Created by Roy Dimapilis on 7/7/25.
//

import Foundation

struct Validation {
    static func isValidName(_ name: String)->Bool{
        return name.count > 2
    }
    
    static func isValidGuestCount(_ guest: Int)->Bool{
        return guest > 0
    }
    
    static func isValidDate(_ date: Date) -> Bool {
            return date >= Date()
    }
        
    static func dateValidationMessage(for date: Date) -> String? {
            if !isValidDate(date) {
                return "Please select a valid date"
            }
            return nil
        }
    }
