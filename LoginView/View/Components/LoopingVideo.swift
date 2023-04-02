//
//  LoopingVideo.swift
//  LoginView
//
//  Created by MacAmd on 2/4/23.
//

import SwiftUI
import AVFoundation

struct LoopingVideo: UIViewRepresentable {
   
    func makeUIView(context: Context) -> some UIView {
        return QueuePlayerUIView(frame: .zero)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        // TODO: Nothing to do now..
    }
    
}

class QueuePlayerUIView: UIView {
    private var playerLayer = AVPlayerLayer()
    private var playerLooper: AVPlayerLooper?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Load Video
        let fileUrl = Bundle.main.url(forResource: "travels", withExtension: "mp4")!
        let playerItem = AVPlayerItem(url: fileUrl)
        
        // Setup Player
        let player = AVQueuePlayer(playerItem: playerItem)
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)
        
        // Loop Video
        playerLooper = AVPlayerLooper(player: player, templateItem: playerItem)
        
        // Play Video
        player.play()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct LoopingVideo_Previews: PreviewProvider {
    static var previews: some View {
        LoopingVideo()
    }
}
