require 'pry'

class PostsController < ApplicationController
  attr_accessor :post, :test

  def initialize
    @test = 100
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    self.test = 200
    puts "Test << #{self.test}"
  end

  # add create method here
  def create
    puts "Test >> #{self.test}"
    # @post = Post.new
    @post.title = params[:title]
    @post.description = params[:description]
    @post.save
    redirect_to @post
  end
end
