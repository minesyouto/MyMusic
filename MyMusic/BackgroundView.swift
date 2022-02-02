//
//  BackgroundView.swift
//  MyMusic
//
//  Created by みねた on 2022/02/02.
//
//背景画像を設定するファイル

import SwiftUI

struct BackgroundView: View {
    let imageName: String
    //①imageNameという定数の方を指定
    
    var body: some View {
        Image(imageName)
        //③Imageファイルの引数を定数Imageに指定
            .resizable()
            .ignoresSafeArea()
            .aspectRatio(contentMode: .fill)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView(imageName: "background")
        //②プレビュー用のBackgroungViewの引数を[imageName]という定数にし、画像ファイルbackgroundを指定
    }
}
