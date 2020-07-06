//
//  MovieDetailsViewController.swift
//  CW-6
//
//  Created by Hasan Alsaffar on 6/9/20.
//  Copyright © 2020 Hasan Alsaffar. All rights reserved.
//

import UIKit
import UIKit
import AVKit
import AVFoundation

class MovieDetailsViewController: UIViewController {
   var themeSong : AVAudioPlayer?
    
    var playerviewcontroller = AVPlayerViewController()
    
    var playerview = AVPlayer ()

    var movieData : moviesModel!
    
    @IBOutlet weak var movieImg: UIImageView!
    @IBOutlet weak var movieName: UINavigationItem!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var movieRated: UILabel!
    @IBOutlet weak var movieReleaseDate: UILabel!
    @IBOutlet weak var actorImg1: UIImageView!
    @IBOutlet weak var actorName1: UILabel!
    @IBOutlet weak var actorImg2: UIImageView!
    @IBOutlet weak var actorName2: UILabel!
    @IBOutlet weak var actorImg3: UIImageView!
    @IBOutlet weak var actorName3: UILabel!
    
    @IBOutlet weak var ratingBG: UIView!
    
    @IBOutlet weak var ratedBG: UIView!
    
    @IBOutlet weak var yearBG: UIView!
    
    @IBAction func playTrailer(_ sender: Any) {
  
        playsclip(clipName: movieData.clipName())
       
       
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
        setMovieDetails()
        playThemeSong(themeSongName: movieData.themeSongName() )
      
        // Do any additional setup after loading the view.
    }
    

    func setMovieDetails(){
        movieName.title = movieData.movieName
        self.movieImg.image = UIImage(named: movieData.movieName)
        self.movieRated.text = movieData.rated
        self.movieRating.text = String(movieData.rating)
        
        self.movieReleaseDate.text = String(movieData.movieReleaseDate)
        
      self.actorImg1.image = UIImage(named: movieData.actors[0])
        self.actorName1.text = movieData.actors[0]
        self.actorImg2.image = UIImage(named: movieData.actors[1])
        self.actorName2.text = movieData.actors[1]

        self.actorImg3.image = UIImage(named: movieData.actors[2])
        self.actorName3.text = movieData.actors[2]

        
    }
    
    func configureUI(){
        ratedBG.layer.cornerRadius = 20
        ratingBG.layer.cornerRadius = 20
        yearBG.layer.cornerRadius = 20
    }
    
    func playThemeSong (themeSongName : String) {
        if themeSongName == movieData.themeSongName() {
    let path = Bundle.main.path(forResource: themeSongName, ofType:nil)!
       let url = URL(fileURLWithPath: path)

       do {
          themeSong = try AVAudioPlayer(contentsOf: url)
        themeSong?.play()
        
       } catch {
           // couldn't load file :(
       }
    }
        else {
            pause()
        }
    }
        func playsclip (clipName : String) {
                     let path = Bundle.main.path(forResource: clipName, ofType:nil)!
                    
                     let fileURL = NSURL(fileURLWithPath: path)
            playerview = AVPlayer(url:fileURL as URL)
            playerviewcontroller.player = playerview

            self.present(playerviewcontroller, animated: true){

                             self.playerviewcontroller.player?.play()
                          
                         }
                    
        }
}


