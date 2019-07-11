require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { described_class.new(title: 'super post', body: 'super super body') }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
    expect(subject.title.length).to be >= 5
    expect(subject.title.length).to be <= 20
    expect(subject.body.length).to be >= 10
  end

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it "is not valid without a body" do
    subject.body = nil
    expect(subject).not_to be_valid
  end

  it "is not valid with title shorter than 5" do
    subject.title = 'post'
    expect(subject).not_to be_valid
  end

  it "is not valid with body shorter than 10" do
    subject.body = 'body'
    expect(subject).not_to be_valid
  end

  it "is not valid with too longer than 20" do
    subject.title = 'super super hiper super post super'
    expect(subject).not_to be_valid
  end

end