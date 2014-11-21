task default: [:travis, :cucumber]
task travis: [:spec, :quality]
task quality: [:reek, :flog, :flay]

Dir.glob('tasks/*.rake').each { |each| import each }
