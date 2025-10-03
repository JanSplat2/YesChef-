//
//  Ingredients.swift
//  YesChef!
//
//  Created by Dittrich, Jan - Student on 10/1/25.
//

import SwiftUI

struct Ingredients: View {
    @State var CarrotMultiplier = 1
    @State var MeatMultiplier = 2
    @State var HerbMultiplier = 2
    @State var doubleRecipe = 1
    var body: some View {
        ScrollView{
        Text("Those are your engredients:")
            .font(.system(size: 40, weight: .bold, design: .monospaced))
            VStack{
                Text("Endura Carrot")
                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                Image("EnduraCarrot")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 200, height: 200)
                Text("x\(CarrotMultiplier * doubleRecipe)")
                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                    .offset(x: 130,y: 0)
            }
            .padding()
            .background(LinearGradient(colors: [.darkBrown1, .lightBrown], startPoint: .top, endPoint: .bottom))
            VStack{
                Text("  Raw Meat   ")
                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                Image("RawMeat")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 200, height: 200)
                Text("x\(MeatMultiplier * doubleRecipe)")
                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                    .offset(x: 130,y: 0)
            }
            .padding()
            .background(LinearGradient(colors: [.darkBrown1, .lightBrown], startPoint: .top, endPoint: .bottom))
            VStack{
                Text(" Hyrule Herb ")
                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                Image("HyruleHerb")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 200, height: 200)
                Text("x\(HerbMultiplier * doubleRecipe)")
                    .font(.system(size: 40, weight: .bold, design: .monospaced))
                    .offset(x: 130,y: 0)
            }
            .padding()
            .background(LinearGradient(colors: [.darkBrown1, .lightBrown], startPoint: .top, endPoint: .bottom))
            Button("Double up!", action: {
                CarrotMultiplier *= 2
                MeatMultiplier *= 2
                HerbMultiplier *= 2
            })
            .buttonStyle(.borderedProminent)
            Text("Or...")
                .font(.system(size: 40, weight: .bold, design: .monospaced))
            Text("For how many People are you cooking?")
            TextField("For how many are you cooking?", value: $doubleRecipe, format: .number )
                .offset(x: 100, y: 0)
            Text("Or...")
                .font(.system(size: 40, weight: .bold, design: .monospaced))
            if CarrotMultiplier > 1 {
                Button("Half It!", action: {
                    CarrotMultiplier /= 2
                    MeatMultiplier /= 2
                    HerbMultiplier /= 2
                })
                .buttonStyle(.borderedProminent)
            }

        }
        
    }
}

#Preview {
    Ingredients()
}


