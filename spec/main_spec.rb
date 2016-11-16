class User < Mugatu::Entity
  attribute :name,  String
  attribute :age,   Integer
  attribute :email, String
end

class Post < Mugatu::Entity
  attribute :title,     String,  default_value: 'untitled'
  attribute :body,      String
  attribute :published, Boolean, default_value: false
end

describe User do
  describe '#initialize' do
    it 'assigns values' do
      user = User.new(name: 'Steve', age: 28, email: 'weissst@mail.gvsu.edu')

      user.name.should  == 'Steve'
      user.age.should   == 28
      user.email.should == 'weissst@mail.gvsu.edu'
    end
  end
end

describe Post do
  describe '#initialize' do
    it 'respects default values' do
      post = Post.new

      post.title.should     == 'untitled'
      post.published.should == false
    end
  end

  describe '#title=' do
    it 'casts value' do
      post = Post.new(title: 1234)

      post.title.should == '1234'
    end
  end
end
