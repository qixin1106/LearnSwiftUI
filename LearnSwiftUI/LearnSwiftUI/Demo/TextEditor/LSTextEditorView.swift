//
//  LSTextEditorView.swift
//  LearnSwiftUI
//
//  Created by Qixin on 2021/6/15.
//

import SwiftUI

struct MessageModel: Identifiable {
    var id = UUID()
    var content: String
    var name: String
    var bMySend: Bool
}


struct LSTextEditorView: View {
    
    
    @State private var content: String = "Text"
    
    
    init() {
        UITextView.appearance().backgroundColor = UIColor.clear
    }
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: nil, content: {
                
                MessageListView()
                
                Spacer()
                Divider().padding(.bottom, 5)
                HStack(alignment: .center, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "mic.circle.fill").font(.title)
                    })
                    .padding(.leading, 10)

                    TextEditor(text: $content)
                        .font(.system(size: 18))
                        .padding([.leading,.trailing], 10)
                        .multilineTextAlignment(.leading)
                        .frame(width: .infinity, height: 40, alignment: .center)
                        .background(Color(white: 0.9))
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                    
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "face.smiling.fill").font(.title)
                    })
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: "plus.circle.fill").font(.title)
                    })
                    .padding(.trailing, 10)


                })
            })
            .navigationTitle("Group")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct MessageListView: View {
    
    var messages = [
        MessageModel(content: "Hello World", name: "C++", bMySend: false),
        MessageModel(content: "Hello World", name: "Java", bMySend: false),
        MessageModel(content: "Hello World", name: "Go", bMySend: false),
        MessageModel(content: "Hello World", name: "C", bMySend: false),
        MessageModel(content: "Hello World", name: "Python", bMySend: false),
        MessageModel(content: "Hello World", name: "JavaScript", bMySend: false),
        MessageModel(content: "Hello World", name: "C＃", bMySend: false),
        MessageModel(content: "Hello World", name: "PHP", bMySend: false),
        MessageModel(content: "Hello World", name: "Swift", bMySend: true),
    ]
    
    var body: some View {
        ScrollView {
            ScrollViewReader(content: { proxy in
                                
                ForEach(messages) { item in
                    
                    if item.bMySend == true {
                        MyMessageView(model: item).id(item.id)
                    } else {
                        OtherMessageView(model: item)
                    }
                }
                .onAppear(perform: {
                    let model = messages.last
                    proxy.scrollTo(model?.id, anchor: .bottom)
                })
            })
        }
    }
}



struct MyMessageView: View {
    var model: MessageModel
    var body: some View {
        VStack(alignment: .trailing, spacing: nil, content: {
            
            HStack(alignment: .center, spacing: nil, content: {
                Spacer()
                Text(model.name)
                    .foregroundColor(Color(white: 0.5))
                    .padding(.top, 15)
                Image("dog")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
                    .clipShape(Circle())
                    .padding([.top,.trailing], 15)
            })
            
            Text(model.content)
                .foregroundColor(.white)
                .padding(.all, 10)
                .background(Color.blue)
                .cornerRadius(8)
                .offset(x: -50)

        })
    }
}

struct OtherMessageView: View {
    var model: MessageModel
    var body: some View {
        
        VStack (alignment: .leading, spacing: nil, content: {
            HStack(alignment: .center, spacing: nil, content: {
                Image("dog")
                    .resizable()
                    .frame(width: 30, height: 30, alignment: .center)
                    .clipShape(Circle())
                    .padding([.top,.leading], 15)
                Text(model.name)
                    .foregroundColor(Color(white: 0.5))
                    .padding(.top, 15)
                Spacer()
            })
            
            Text(model.content)
                .foregroundColor(.black)
                .padding(.all, 10)
                .background(Color(white: 0.95))
                .cornerRadius(8)
                .offset(x: 50)

        })
    }
}




struct LSTextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        LSTextEditorView()
            
    }
}
