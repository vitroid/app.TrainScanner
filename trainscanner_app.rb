require "formula" 

# http://qiita.com/mountcedar/items/f10161d4e483aa8c1283

class TrainscannerApp < Formula 
  homepage "https://github.com/vitroid/TrainScanner"
  url "https://github.com/vitroid/app.TrainScanner/archive/v0.1.2.zip" 
  sha256 "387a3067dea8805407c8af60d26f5664112ea4e9298a30cf3b203208fc0959b1" 

  #Assume all dependencies are resolved in installing the TrainScanner.

 
  def install 
    system "make", "-C", "py2app", "install"
  end 
 
  test do 
    system "false" 
  end 
end 
