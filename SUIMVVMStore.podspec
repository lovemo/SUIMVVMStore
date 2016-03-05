Pod::Spec.new do |s|
    s.name                  = 'SUIMVVMStore'
    s.version      = '0.0.8'
    s.summary               = 'SUIMVVMStore is a store frameWork easy to develop iOS'
    s.homepage              = 'https://github.com/lovemo/SUIMVVMStore'
    s.platform     = :ios, '7.0'
    s.license               = 'MIT'
    s.author                = { 'lovemo' => 'lovemomoyulin@qq.com' }
    s.source                = { :git => 'https://github.com/lovemo/SUIMVVMStore.git',:tag => '0.0.8' }
    s.requires_arc          = true
    s.public_header_files = 'SUIMVVMStore/**/*.h'
    s.source_files  = 'SUIMVVMStore/SMKStorePublic.h'
    s.framework             = 'CoreFoundation','Foundation','UIKit'
    s.library		= 'sqlite3'

    s.subspec 'YTKKeyValueStore' do |ss|
    ss.dependency 'FMDB'
    ss.source_files = 'SUIMVVMStore/YTKKeyValueStore/**/*'
    ss.public_header_files = 'SUIMVVMStore/**/*.h'
    end

    s.subspec 'SUIMVVMStore' do |ss|
    ss.dependency 'SUIMVVMStore/YTKKeyValueStore'
    ss.source_files = 'SUIMVVMStore/SUIMVVMStore/*.{h,m}'
    ss.public_header_files = 'SUIMVVMStore/**/*.h'
    end

end
