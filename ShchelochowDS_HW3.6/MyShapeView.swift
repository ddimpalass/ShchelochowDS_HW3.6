//
//  MyShapeView.swift
//  ShchelochowDS_HW3.6
//
//  Created by Apple on 12.04.2021.
//

import SwiftUI

struct MyShapeView: View {
    let width: CGFloat
    let height: CGFloat
    let color: Color
    
    var body: some View {
        GeometryReader { geometry in
            let size = min(geometry.size.width, geometry.size.height)

            Path { path in
                path.move(to: CGPoint(x: size * 0.15, y: size * 0.5))
                path.addQuadCurve(to: CGPoint(x: size * 0.495, y: size * 0.32),
                                  control: CGPoint(x: size * 0.22, y: size * 0.2)
                )
                path.addQuadCurve(to: CGPoint(x: size * 0.53, y: size * 0.315),
                                  control: CGPoint(x: size * 0.515, y:size * 0.32)
                )
                path.addQuadCurve(to: CGPoint(x: size * 0.83, y: size * 0.365),
                                  control: CGPoint(x: size * 0.72, y: size * 0.225)
                )
                path.addQuadCurve(to: CGPoint(x: size * 0.735, y: size * 0.525),
                                  control: CGPoint(x: size * 0.745, y: size * 0.4)
                )
                path.addQuadCurve(to: CGPoint(x: size * 0.85, y: size * 0.695),
                                  control: CGPoint(x: size * 0.735, y: size * 0.64)
                )
                path.addQuadCurve(to: CGPoint(x: size * 0.67, y: size * 0.92),
                                  control: CGPoint(x: size * 0.775, y: size * 0.895)
                )
                path.addQuadCurve(to: CGPoint(x: size * 0.56, y: size * 0.89),
                                  control: CGPoint(x: size * 0.63, y: size * 0.92)
                )
                path.addQuadCurve(to: CGPoint(x: size * 0.47, y: size * 0.89),
                                  control: CGPoint(x: size * 0.52, y: size * 0.88)
                )
                path.addQuadCurve(to: CGPoint(x: size * 0.305, y: size * 0.89),
                                  control: CGPoint(x: size * 0.355, y: size * 0.95)
                )
                path.addQuadCurve(to: CGPoint(x: size * 0.15, y: size * 0.5),
                                  control: CGPoint(x: size * 0.13, y: size * 0.7)
                )
                
            }
            
            Path { path in
                path.move(to: CGPoint(x: size * 0.5, y: size * 0.275))
                path.addQuadCurve(to: CGPoint(x: size * 0.675, y: size * 0.08),
                                  control: CGPoint(x: size * 0.525, y: size * 0.11)
                )
                path.addQuadCurve(to: CGPoint(x: size * 0.5, y: size * 0.275),
                                  control: CGPoint(x: size * 0.66, y: size * 0.265)
                )
            }
            
        }
        .foregroundColor(color)
        .frame(width: width, height: height)
    }
}

struct MyShapeView_Previews: PreviewProvider {
    static var previews: some View {
        MyShapeView(width: 200, height: 200, color: .secondary)
    }
}
