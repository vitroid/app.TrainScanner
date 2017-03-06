require "formula" 

# http://qiita.com/mountcedar/items/f10161d4e483aa8c1283

class TrainscannerApp < Formula 
  homepage "https://github.com/vitroid/TrainScanner"
  url "https://github.com/vitroid/app.TrainScanner/archive/v0.1.1.zip" 
  sha256 "9328482b4c9de2deb878aed9712a7a14688d4f9affad48d4fbef9dc68110cfb1" 

  #Assume all dependencies are resolved in installing the TrainScanner.

 
  def install 
    system "make", "-C", "py2app", "install"
  end 
 
  test do 
    system "false" 
  end 
end 
