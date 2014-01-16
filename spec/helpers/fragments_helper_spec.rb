require 'spec_helper'
require 'wiki_words'

describe FragmentsHelper do
  context "Validates a WikiWord" do
    it "if it starts w/ a capital letter, followed by at least one lower case letter, followed by any number of blocks like the first one" do
      str = "ThisIsWikiWord"
      expect(str).to match(/#{WikiWords::WIKI_WORD_PATTERN}/)
    end
    it "if it starts with '[[', followed by any number of characters and ending w/ ']]" do
      str = "[[This, is thré page name]]"
      expect(str).to match(/\[\[(.*)\]\]/)
      puts "Matched: #{Regexp.last_match(1)}" 
    end
    it "if it starts with '[[', followed by any number of characters, a '|', a text o be shown and ending w/ ']]'" do
      str = "[[This, is thé page name|This is the text]]"
      link, text = /\[\[(?<link>.*)\]\]/.match(str)[:link].split('|')[1..2]
      puts "link: #{link}, text: #{text}"

    end
  end

  context "Does not validate a WikiWord" do
    it "if it starts w/ a back-slash, followed by a capital letter, followed by at least one lower case letter, followed by any number of blocks like the previous one" do
      str = "\\ThisShouldNotBeWikiWord"
      #expect(str).not_to match(/#{WikiWords::WIKI_WORD_PATTERN}/)
      pending "To do!"
    end
    it "if it starts w/ two capital letters, followed by any combination of characters" do
      str = "TWoConsecutiveCapitalLettersDontMakeaWikiWord"
      pending "To do!"
    end
    it "if it has a non alpha-numeric character" do
      str = "ThisIsn'tWikiWord"
      pending "To do!"
    end
  end
end
