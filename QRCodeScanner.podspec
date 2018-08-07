Pod::Spec.new do |s|
s.name = "QRCodeScanner"
s.version = '1.0.1'
s.summary = "QRCodeScanner is a 1D/2D code(i.e QR code) scanner framework."
s.platform = :ios, "10.0"
s.author = 'Manjunath Shivakumara'
s.license    = {MIT}
s.homepage = 'https://scm.sapphirepri.com/Mapper/QRCodeScanner'
s.source = { :git => 'https://github.com/ManjunathShiv/QRCodeScanner.git', :tag => "#{s.version}"}
s.source_files = ["Source/QRCodeScanner/QRCodeScanner/**/*.{h,swift}"]
s.requires_arc = true
s.frameworks = 'AVFoundation', 'Foundation', 'UIKit'
s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }
s.swift_version = '4.0'
end
