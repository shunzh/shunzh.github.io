#!/usr/bin/env ruby
# frozen_string_literal: true

require "erb"
require "date"
require "fileutils"
require "yaml"

ROOT = File.expand_path(__dir__)
TEMPLATE_PATH = "_layouts/cv.tex.erb"
OUTPUT_FILE = "shun-zhang-cv.tex"

def load_yaml(path)
  YAML.safe_load_file(path, permitted_classes: [Date, Symbol], aliases: true)
end

def present?(value)
  !value.nil? && value.to_s.strip != ""
end

def escape_latex(text)
  text.to_s
      .gsub("\\", "\\textbackslash{}")
      .gsub("&", "\\&")
      .gsub("%", "\\%")
      .gsub("$", "\\$")
      .gsub("#", "\\#")
      .gsub("_", "\\_")
      .gsub("{", "\\{")
      .gsub("}", "\\}")
      .gsub("~", "\\textasciitilde{}")
      .gsub("^", "\\textasciicircum{}")
end

def inline_latex(text)
  return "" unless present?(text)

  escaped = escape_latex(text)
  escaped.gsub(/\*\*(.+?)\*\*/, "\\\\textbf{\\1}")
         .gsub(/\[(.+?)\]\((.+?)\)/, "\\1")
end

def h(text)
  escape_latex(text)
end

def date_latex(date)
  inline_latex(date).gsub(" ", "~")
end

def date_range_latex(item)
  if present?(item["start_date"]) && present?(item["end_date"])
    "\\mbox{#{date_latex(item["start_date"])}} --\\linebreak[1] \\mbox{#{date_latex(item["end_date"])}}"
  else
    "\\mbox{#{date_latex(item["start_date"] || item["end_date"] || "")}}"
  end
end

def authors_latex(authors)
  authors.to_a.map do |name|
    rendered = inline_latex(name)
    name == "Shun Zhang" ? "\\textbf{#{rendered}}" : rendered
  end.join(", ")
end

def description_latex(description)
  Array(description)
    .select { |value| present?(value) }
    .map { |value| inline_latex(value) }
    .join("\\newline{}")
end

config = load_yaml(File.join(ROOT, "_config.yml"))
timeline = load_yaml(File.join(ROOT, "_data/timeline.yaml"))
publications = load_yaml(File.join(ROOT, "_data/publications.yaml"))
services = load_yaml(File.join(ROOT, "_data/academic_services.yaml"))

experiences = timeline.select { |item| item["type"] == "experience" && !item["hide"] }
education = timeline.select { |item| item["type"] == "education" && !item["hide"] }
publications = publications.select { |pub| %w[paper preprint].include?(pub["category"]) }
homepage_label = config["homepage_url"].sub(%r{\Ahttps?://}, "")
name_parts = config["name"].split(/\s+/, 2)
first_name = name_parts[0]
last_name = name_parts[1] || ""

template = File.read(File.join(ROOT, TEMPLATE_PATH))
output_dir = File.join(ROOT, "tmp/cv")
FileUtils.mkdir_p(output_dir)
File.write(
  File.join(output_dir, OUTPUT_FILE),
  ERB.new(template, trim_mode: "-").result(binding)
)
