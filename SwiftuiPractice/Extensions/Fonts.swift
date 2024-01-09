//
//  Fonts.swift
//  SwiftuiPractice
//
//  Created by Web and App on 09/01/2024.
//

import Foundation
import SwiftUI

extension Font {
    static func poppins_bold(fontsize: CGFloat) -> Font {
        return .custom("Poppins-Bold", size: fontsize)
    }
    
    static func poppins_semibold(fontsize: CGFloat) -> Font {
        return .custom("Poppins-SemiBold", size: fontsize)
    }
    
    static func poppins_medium(fontsize: CGFloat) -> Font {
        return .custom("Poppins-Medium", size: fontsize)
    }
    
    static func poppins_regular(fontsize: CGFloat) -> Font {
        return .custom("Poppins-Regular", size: fontsize)
    }
    
    static func poppins_light(fontsize: CGFloat) -> Font {
        return .custom("Poppins-Light", size: fontsize)
    }
}
