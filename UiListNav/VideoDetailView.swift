//
//  VideoDetailView.swift
//  UiListNav
//
//  Created by Nij Mehar on 29/11/22.
//

import SwiftUI

struct VideoDetailView: View {
    var video:Video
    var body: some View {
        VStack(spacing:20){
            Spacer()
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(8)
            Text(video.title)
                .frame(width: 250)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .fontWeight(.bold)
            
            HStack(alignment: .center,spacing: 40){
                Label("\(video.viewCount)",systemImage: "eye.fill")
                    .font(.caption)
                    .foregroundColor(.secondary)
                Text(video.uploadDate)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }.padding(.top,10)
            Text(video.description)
                .font(.footnote)
                .padding(15)
            Spacer()
            Link(destination: video.url,label:{
                Text("Watch Now!")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding(10)
                    .fontWeight(.bold)
                    .background(.red)
                    .cornerRadius(8)
                    .shadow(radius: 5)
            }).padding(.bottom,50)
            
            
        }
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video:VideoList.topTen.first!)
    }
}
