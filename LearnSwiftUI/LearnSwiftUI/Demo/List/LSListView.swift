//
//  LSListView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/9.
//

import SwiftUI

//MARK: Model
struct ListItemModel: Identifiable {
    var id = UUID()
    var name: String
    var descs: String
    var imageName: String
}

//MARK: ListView
struct LSListView: View {
        
    var items: [ListItemModel] = [
        ListItemModel(name: "LiLei", descs: "人民教育出版社", imageName: "dog"),
        ListItemModel(name: "HanMeiMei", descs: "人民教育出版社", imageName: "dog"),
        ListItemModel(name: "Lily", descs: "人民教育出版社", imageName: "dog"),
        ListItemModel(name: "Lucy", descs: "人民教育出版社", imageName: "dog"),
        ListItemModel(name: "Jim", descs: "人民教育出版社", imageName: "dog"),
        ListItemModel(name: "Kate", descs: "人民教育出版社", imageName: "dog"),
        ListItemModel(name: "Ann", descs: "人民教育出版社", imageName: "dog"),
        ListItemModel(name: "Tom", descs: "人民教育出版社", imageName: "dog"),
        ListItemModel(name: "Miss Gao", descs: "人民教育出版社", imageName: "dog"),
    ]
    
    
    var body: some View {
        
        NavigationView(content: {
            //相当于TableView
            List {
                
                ForEach (items) { item in
                    
                    //NavigationLink用来实现PushController
                    NavigationLink(
                        destination: LSSecondDetailView(item: item),
                        label: {
                            LSListRowView(item: item)
                        })
                    
                }
            }
            //设置导航标题
            .navigationTitle("人民教育出版社")
            .listStyle(InsetListStyle())
        })
    }
}


//MARK: RowView
struct LSListRowView: View {
    var item: ListItemModel

    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 64, height: .infinity, alignment: .center)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: nil, content: {
                Text(item.name)
                    .font(.title)
                    .foregroundColor(.primary)
                Text(item.descs)
                    .font(.body)
                    .foregroundColor(.secondary)
            })
        }
    }
}

//MARK: DetailView
struct LSSecondDetailView: View {
    
    var item: ListItemModel
    
    var body: some View {
        VStack {
            Image(item.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.size.width, height: .infinity, alignment: .center)
            Text(item.name)
                .font(.title)
                .foregroundColor(.primary)
            Text(item.descs)
                .font(.body)
                .foregroundColor(.secondary)
        }
        .navigationTitle(item.name)
        //设置为inline模式，如UIKit
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct LSListView_Previews: PreviewProvider {
    static var previews: some View {
        LSListView()
    }
}
