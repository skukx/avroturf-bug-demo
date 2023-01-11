require 'avro_turf'
require 'pathname'
require 'debug'

puts 'Running Application'

root = Pathname.new(__dir__)

store = AvroTurf::SchemaStore.new(path: root.join('schemas'))
store.load_schemas!

puts 'Done!'
