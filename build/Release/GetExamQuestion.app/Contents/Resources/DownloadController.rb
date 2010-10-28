# DownloadController.rb
# GetExamQuestion
#
# Created by Sebastian Probst Eide on 28.10.10.
# Copyright 2010 Kle.io. All rights reserved.

class DownloadController < NSWindowController
	attr_accessor :year, :paper, :question
	def download(sender)
		strYear = year.stringValue
		strPaper = paper.stringValue
		strQuestion = question.stringValue
		`curl http://www.cl.cam.ac.uk/teaching/exams/pastpapers/y#{strYear}p#{strPaper}q#{strQuestion}.pdf > ~/Desktop/#{strYear}-#{strPaper}-#{strQuestion}.pdf`
		puts "Downloading, go awesome!"
		# Clear fields
		year.stringValue = ""
		paper.stringValue = ""
		question.stringValue = ""
	end
end
