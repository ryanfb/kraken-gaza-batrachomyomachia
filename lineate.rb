#!/usr/bin/env ruby
require 'csv'

lines = CSV.read('line-endings.csv', { encoding: "UTF-8", headers: true })
text = File.open('gaza-batrachomyomachia.md').read
current_line = 0
current_line_text = []
puts "---\n---"
text.each_line do |line|
  line.split(' ').each do |word|
    if word == lines[current_line]['break']
      current_line += 1
      current_line_text << word
      puts "#{current_line}. #{current_line_text.join(' ')}"
      current_line_text = []
    else
      current_line_text << word unless word == '---'
    end
  end
end
