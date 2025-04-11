Pod::Spec.new do |s|
  s.name             = 'ffmpeg-kit-ios-audio'
  s.version          = '6.0'
  s.summary          = 'Static XCFrameworks for FFmpegKit audio package'
  s.description      = 'Audio-only FFmpegKit build including necessary libraries as XCFrameworks'
  s.homepage         = 'https://github.com/khj3132/ffmpeg-kit-react-native'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kokozi' => 'developers@kokozi.house' }
  s.source           = { :git => 'https://github.com/khj3132/ffmpeg-kit-react-native.git', :tag => s.version }

  s.platform         = :ios, '12.1'
  s.requires_arc     = true
  s.static_framework = true

  s.preserve_paths = '**/*.xcframework'

  s.vendored_frameworks = [
    'ffmpegkit.xcframework',
    'libavcodec.xcframework',
    'libavdevice.xcframework',
    'libavfilter.xcframework',
    'libavformat.xcframework',
    'libavutil.xcframework',
    'libswresample.xcframework',
    'libswscale.xcframework'
  ]

  s.libraries = 'c++'
  s.frameworks = 'AVFoundation', 'CoreMedia', 'CoreVideo', 'VideoToolbox'
end
