//
//  ListView.swift
//  UiListNav
//
//  Created by Nij Mehar on 29/11/22.
//

import SwiftUI

struct ListView: View {
    
    var videos = VideoList.topTen
    var body: some View {
        NavigationView{
            List(videos,id: \.id){
                video in
                NavigationLink(destination: VideoDetailView(video: video), label: {
                    HStack{
                        Image(video.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                            .cornerRadius(4)
                        VStack(alignment: .leading,spacing: 8){
                            Text(video.title)
                                .fontWeight(.bold)
                                .lineLimit(2)
                                .minimumScaleFactor(0.9)
                            Text(video.uploadDate)
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }.padding([.trailing,.leading],4)
                    }
                })
               
            }.navigationTitle("Sean's Top 10")
        }
    }
}

struct listView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

