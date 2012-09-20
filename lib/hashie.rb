module Hashie
  autoload :Clash,          'hashie/clash'
  autoload :Dash,           'hashie/dash'
  autoload :Hash,           'hashie/hash'
  autoload :HashExtensions, 'hashie/hash_extensions'
  autoload :Mash,           'hashie/mash'
  autoload :PrettyInspect,  'hashie/hash_extensions'
  autoload :Trash,          'hashie/trash'

  module Extensions
    autoload :Coercion,          'hashie/extensions/coercion'
    autoload :DeepMerge,         'hashie/extensions/deep_merge'
    autoload :KeyConversion,     'hashie/extensions/key_conversion'
    autoload :IndifferentAccess, 'hashie/extensions/indifferent_access'
    autoload :MergeInitializer,  'hashie/extensions/merge_initializer'
    autoload :MethodAccess,      'hashie/extensions/method_access'
    autoload :MethodQuery,       'hashie/extensions/method_access'
    autoload :MethodReader,      'hashie/extensions/method_access'
    autoload :MethodWriter,      'hashie/extensions/method_access'
    autoload :StringifyKeys,     'hashie/extensions/key_conversion'
    autoload :SymbolizeKeys,     'hashie/extensions/key_conversion'
  end
end

unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

Motion::Project::App.setup do |app|
  Dir.glob(File.join(File.dirname(__FILE__), 'hashie/*.rb')).each do |file|
    app.files.unshift(file)
  end
end