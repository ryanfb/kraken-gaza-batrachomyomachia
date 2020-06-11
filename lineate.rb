#!/usr/bin/env ruby
require 'csv'

lines = CSV.read('line-endings.csv', { encoding: "UTF-8", headers: true })
text = File.open('gaza-batrachomyomachia.md').read
current_line = 0
current_line_text = []
prose_lines = []
File.open('gaza-batrachomyomachia-lineated.md','w') do |prose_lineated|
  prose_lineated.puts "---\n---"
  text.each_line do |line|
    line.split(' ').each do |word|
      if word == lines[current_line]['break']
        current_line += 1
        current_line_text << word
        prose_lines << current_line_text.join(' ')
        prose_lineated.puts "#{current_line}. #{current_line_text.join(' ')}"
        current_line_text = []
      else
        current_line_text << word unless word == '---'
      end
    end
  end
end

verse = File.open('gaza-batrachomyomachia-verse.md').read
current_line = 0
File.open('gaza-batrachomyomachia-aligned.csv','w') do |aligned_csv|
  aligned_csv.puts '"",Verse,Prose Paraphrase'
  verse.each_line do |line|
    line.chomp!
    unless line == '---'
      aligned_csv.puts "#{current_line + 1},\"#{line}\",\"#{prose_lines[current_line]}\""
      current_line += 1
    end
  end
end
