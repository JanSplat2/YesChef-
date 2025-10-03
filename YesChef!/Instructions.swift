//
//  Instructions.swift
//  YesChef!
//
//  Created by Dittrich, Jan - Student on 10/2/25.
//

import SwiftUI

struct Instructions: View {
    var body: some View {
        VStack{
            Text("Explanation:")
                .fontWeight(.black)
                .font(.system(size: 40))
            Text("First, you need to find a Cooking Post.")
                .fontWeight(.black)
                .font(.system(size: 20))
            Text("This is, how one looks like:")
            Image("CookingPost")
            Text("Than, you need to select the right\nIngredients. Throw those into the\nCooking Post and wait a few\nseconds.")
                .fontWeight(.black)
                .font(.system(size: 20))
            Text("Bon Appetite!")
                .fontWeight(.black)
                .font(.system(size: 40))
            
        }
    }
}

#Preview {
    Instructions()
}
