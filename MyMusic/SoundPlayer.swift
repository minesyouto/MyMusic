//
//  SoundPlayer.swift
//  MyMusic
//
//  Created by みねた on 2022/02/01.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {
    //シンバルの音源データを定数cymbalDataに格納
    let cymbalData = NSDataAsset(name: "cymbalSound")!.data
    let guitarData = NSDataAsset(name: "guitarSound")!.data
    
    //シンバル用プレイヤーの変数
    //AVAudioPlayerは音源ファイルを再生できるようにする機能
    var cymbalPlayer: AVAudioPlayer!
    var guitarPlayer: AVAudioPlayer!
    
    func cymbalPlay() {
        do {
            cymbalPlayer = try AVAudioPlayer(data: cymbalData)
            cymbalPlayer.play()
        } catch {
            print("シンバルで、エラーが発生しました！")
        }
    }
    func guitarPlay() {
        do {
            guitarPlayer = try AVAudioPlayer(data: guitarData)
            guitarPlayer.play()
        } catch {
            print("ギターで、エラーが発生しました！")
        }
    }
}
