//
//  ContentView.swift
//  SwiftUIStacks
//
//  Created by ZEUS on 8/11/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            VStack(spacing: 20){
                HStack(spacing: 20){
                    PricingView(title: "Basic", price: "$9", textColor: .white, bgColor: .purple)
                    ZStack {
                        PricingView(title: "Pro", price: "$19", textColor: .black, bgColor: Color(red: 240/255, green: 240/255, blue: 240/255))
                        BadgeLabelView(badgeText: "Best For Designer", offsetY: 87)
                    }
                }
                
                ZStack {
                    TeamPricingView()
                    BadgeLabelView(badgeText: "Perfect for teams with 20 members", offsetY: 125)
                }
            }
        }.padding(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text("Choose")
            Text("Your Plan")
        }.font(.system(.largeTitle, design: .rounded, weight: .black))
            .shadow(radius: 4)
            .padding()
    }
}

struct PricingView: View {
    var title: String
    var price: String
    var textColor: Color
    var bgColor: Color
    
    var body: some View {
        VStack{
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            Text("per month")
                .font(.headline)
                .foregroundColor(textColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
    }
}

struct TeamPricingView: View {
    var body: some View {
        VStack{
            Image(systemName: "wand.and.rays")
                .font(.system(size: 40))
                .foregroundColor(.white)
            Text("Team")
                .font(.system(size: 40, weight: .bold, design: .rounded))
                .foregroundColor(.white)
            Text("$299")
                .font(.system(size: 50, weight: .heavy, design: .rounded))
                .foregroundColor(.white)
            Text("per month")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(Color(red: 64/255, green: 64/255, blue: 72/255))
        .cornerRadius(10)
    }
}

struct BadgeLabelView: View {
    var badgeText: String
    var offsetX: CGFloat = 0.0
    var offsetY: CGFloat = 0.0
    var body: some View {
        Text(badgeText)
            .font(.system(.caption, design: .rounded, weight: .bold))
            .foregroundColor(.white)
            .padding(5)
            .background(Color(red: 255/255, green: 183/255, blue: 37/255))
            .offset(x:offsetX, y: offsetY)
    }
}
