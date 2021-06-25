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
        
    @State private var items: [ListItemModel] = [
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
    
    func deleteCell(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    func moveCell(indices: IndexSet, newOffset: Int) {
        items.move(fromOffsets: indices, toOffset: newOffset)
    }
    func addCell() {
        let newItem: ListItemModel = ListItemModel(name: createName(), descs: "教育人民出版社", imageName: "dog")
        items.append(newItem)
    }
    func createName() -> String {
        let names: [String] = ["大聪明","小聪明","小红","小明","狗蛋","二丫"]
        let index: Int = Int(arc4random())%names.count
        return names[index]
    }
    
    var body: some View {
        
        NavigationView(content: {
            //相当于TableView
            List {
                
                //Section布局
                Section(header: Text("Grade 1 Class 9")) {
                    ForEach (items) { item in
                        
                        //NavigationLink用来实现PushController
                        NavigationLink(
                            destination: LSSecondDetailView(item: item),
                            label: {
                                LSListRowView(item: item)
                            })
                        
                    }
                    .onDelete(perform: deleteCell)
                    .onMove(perform: moveCell)
                }

            }
//            .animation(.easeInOut)
            //设置导航标题
            .navigationTitle("人民教育出版社(\(items.count))")
            .listStyle(InsetGroupedListStyle())
            //设置导航栏按钮
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    //编辑按钮
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    
                    HStack{
                        Button("开除") {
                            deleteCell(indexSet: IndexSet(integer: .zero))
                        }
                        Button("入学") {
                            addCell()
                        }
                    }
                }

            }
            
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
