task default: [:travis, :cucumber]
task travis: [:spec, :quality]
task quality: [:rubocop, :reek, :flog]

Dir.glob('tasks/*.rake').each { |each| import each }
