Pod::Spec.new do |s|
  s.name         = "PESGraph"
  s.version      = "0.2.1"
  s.summary      = "Objective-C implementation of a Graph, along with Dijkstra's algorithm for shortest path finding"
  s.homepage     = "https://github.com/snyderp/PESGraph"

  s.license      = { :type => 'BSD2', :file => 'LICENSE.txt' }
  s.author       = { "Peter Snyder" => "snyderp@gmail.com" }

  s.source       = { :git => "https://github.com/snyderp/PESGraph.git", :tag => "v0.2.1" }
  s.source_files = 'PESGraph', 'PESGraph/*.{h,m}'
  s.frameworks    = 'Foundation', 'MapKit'

  s.requires_arc = true
  s.dependency 'KZPropertyMapper'
end
