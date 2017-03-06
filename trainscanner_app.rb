require "formula" 

# http://qiita.com/mountcedar/items/f10161d4e483aa8c1283

class TrainscannerApp < Formula 
  homepage "https://github.com/vitroid/TrainScanner"
  url "https://github.com/vitroid/app.TrainScanner/archive/v0.1.0.zip" 
  sha256 "a75e4f71b5ebf26553c53c5bbe5c2883ebd5e9d05b93d54b09aa8cbb5fea24c2" 

  #Assume all dependencies are resolved in installing the TrainScanner.

 
  def install 
    system "make", "-C", "py2app", "install"
  end 
 
  test do 
    system "false" 
  end 
end 
