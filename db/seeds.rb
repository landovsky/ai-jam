# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Create test users
admin = User.find_or_create_by!(email: 'admin@aijam.test') do |u|
  u.password = 'password123'
  u.role = :admin
end

topic_manager = User.find_or_create_by!(email: 'manager@aijam.test') do |u|
  u.password = 'password123'
  u.role = :topic_manager
end

member = User.find_or_create_by!(email: 'member@aijam.test') do |u|
  u.password = 'password123'
  u.role = :member
end

# Create authors
author1 = Author.find_or_create_by!(name: 'Tomáš') do |a|
  a.user = admin
end

author2 = Author.find_or_create_by!(name: 'Jan')

author3 = Author.find_or_create_by!(name: 'Marie') do |a|
  a.user = topic_manager
end

# Create a jam session
session1 = JamSession.find_or_create_by!(title: 'AI Jam #1: Database Magic') do |s|
  s.held_on = 2.weeks.ago
end

# Create published recipes
Recipe.find_or_create_by!(title: 'Database Schema from Natural Language') do |r|
  r.content = <<~CONTENT
    **The Problem:** I hate writing SQL schema definitions manually.

    **The Stack:** Claude + PostgreSQL

    **The Workflow:**
    1. Describe the database schema in plain English
    2. Ask Claude to generate the SQL CREATE statements
    3. Review and adjust as needed
    4. Apply to database

    **The Verdict:** Works surprisingly well! Claude understands relationships and constraints. Small adjustments needed for complex schemas.
  CONTENT
  r.image = '🗄️'
  r.tags = ['Database', 'Claude', 'SQL']
  r.author = author1
  r.jam_session = session1
  r.published = true
end

Recipe.find_or_create_by!(title: 'Automating Weekly Standup Reports') do |r|
  r.content = <<~CONTENT
    **The Problem:** Writing weekly standup reports is tedious and time-consuming.

    **The Stack:** ChatGPT + Google Calendar API

    **The Workflow:**
    1. Export calendar events for the week
    2. Feed them to ChatGPT with a prompt template
    3. Generate a structured report
    4. Quick manual review and send

    **The Verdict:** Saves 30 minutes every week. The reports are more consistent and nothing gets forgotten.
  CONTENT
  r.image = '⚙️'
  r.tags = ['Automation', 'Workflow', 'ChatGPT']
  r.author = author2
  r.published = true
end

Recipe.find_or_create_by!(title: 'Voice Meeting Summary (Failed Experiment)') do |r|
  r.content = <<~CONTENT
    **The Problem:** I wanted to automatically summarize voice meetings.

    **The Stack:** Whisper API + Claude

    **The Workflow:**
    1. Record the meeting audio
    2. Transcribe with Whisper
    3. Feed transcript to Claude for summary

    **The Verdict:** Doesn't work well. Transcription accuracy is poor with multiple speakers. Too much manual cleanup needed. Might work for solo recordings.
  CONTENT
  r.image = '🎤'
  r.tags = ['Experiment', 'Voice', 'Failed']
  r.author = author3
  r.published = true
end

# Create a draft recipe
Recipe.find_or_create_by!(title: 'Email Classifier (Work in Progress)') do |r|
  r.content = <<~CONTENT
    **The Problem:** My inbox is overwhelming.

    **The Stack:** Gmail API + Claude

    **The Workflow:** Still figuring this out...
  CONTENT
  r.image = '📧'
  r.tags = ['Email', 'Claude', 'WIP']
  r.author = author1
  r.published = false
end

puts "Seeds created successfully!"
puts "Admin: admin@aijam.test / password123"
puts "Topic Manager: manager@aijam.test / password123"
puts "Member: member@aijam.test / password123"
