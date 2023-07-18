#
#  Copyright (c) Facebook, Inc. and its affiliates.
#
#  This source code is licensed under the MIT license found in the LICENSE
#  file in the root directory of this source tree.
#
Pod::Spec.new do |spec|
  spec.name = 'Yoga14'
  spec.version = '1.14.4'
  spec.license =  { :type => 'MIT', :file => "LICENSE" }
  spec.homepage = 'https://github.com/GRiA/yoga'
  spec.documentation_url = 'https://github.com/GRiA/yoga'

  spec.summary = 'Yoga is a cross-platform layout engine which implements Flexbox. Fixed for XCode 14.3'
  spec.description = 'Yoga is a cross-platform layout engine enabling maximum collaboration within your team by implementing an API many designers are familiar with, and opening it up to developers across different platforms.'

  spec.authors = 'Facebook'
  spec.source = {
    :git => 'https://github.com/GRiA/yoga.git',
    :tag => spec.version.to_s,
  }
  spec.platforms = { :ios => "14.0", :osx => "10.13", :tvos => "11.0", :watchos => "4.0" }
  spec.module_name = 'yoga'
  spec.requires_arc = false
  spec.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES'
  }
  spec.compiler_flags = [
      '-fno-omit-frame-pointer',
      '-fexceptions',
      '-Wall',
      '-Werror',
      '-std=c++1y',
      '-fPIC'
  ]
  spec.source_files = 'yoga/**/*.{c,h,cpp}'
  spec.public_header_files = 'yoga/{Yoga,YGEnums,YGMacros,YGValue}.h'

end
