require "formula" 

# http://qiita.com/mountcedar/items/f10161d4e483aa8c1283

class TrainscannerApp < Formula 
  homepage "https://github.com/vitroid/TrainScanner"
  url "https://github.com/vitroid/app.TrainScanner/archive/v0.1.1.zip" 
  sha256 "802634e815a9ec17f7483b9396833c0549b8137855063ecd78544e299cf80b43" 

  #Assume all dependencies are resolved in installing the TrainScanner.

 
  def install 
    system "make", "-C", "py2app", "install"
  end 
 
  test do 
    system "false" 
  end 
end 
