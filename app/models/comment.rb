class Comment < ActiveRecord::Base

  include ActsAsCommentable::Comment

  belongs_to :commentable, :polymorphic => true

  default_scope -> { order('created_at ASC') }

  # NOTE: install the acts_as_votable plugin if you
  # want user to vote on the quality of comments.
  #acts_as_voteable

  # NOTE: Comments belong to a user
  belongs_to :user
  delegate :name, to: User, prefix: true

  PUBLIC_ATTRIBUTES = %w(user_id title comment user_name)
  def public_attributes
    self.attributes.keep_if{|k,v| PUBLIC_ATTRIBUTES.include? k}
  end

end
