//
//  Resources.swift
//  Surf-Student-Project
//
//  Created by Данил Акимов on 10.02.2023.
//

import Foundation
import UIKit

enum R {
    enum Colors {
        static let active = UIColor(hexString: "#313131")
        static let inActive = UIColor(hexString: "#F3F3F5")
        static let titleGray = UIColor(hexString: "#96959B")
        static let directionsColor = UIColor(hexString: "#313131")
        static let background = UIColor(hexString: "#F8F9F9")
        static let secondary = UIColor(hexString: "#F0F3FF")
        static let subTitleGray = UIColor(hexString: "#D8D8D8")
    }
    

    enum Fonts {
        static func sfProDisplay(with size: CGFloat) -> UIFont {
            UIFont(name: "SF Pro Display", size: size) ?? UIFont()
        }
    }
    
    enum Labels {
        
        static let titleLabel = "Стажировка в Surf"
        static let subtitleLabel = "Работай над реальными задачами под руководством опытного наставника и получи возможность стать частью команды мечты."
        static let midleLabel = "Получай стипендию, выстраивай удобный график,работай на современном железе."
        static let bottomLabel = "Хочешь к нам?"
        static let bottomButton = "Отправить заявку"


    }
    
}
