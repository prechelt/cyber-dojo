  def setup
    @kata = make_kata('Ruby-installed-and-working')
  end

  def teardown
    Thread.current[:file] = nil
    system("rm -rf #{root_dir}/katas/*")
    system("rm -rf #{root_dir}/zips/*")    
  end

  test "avatar names all begin with a different letter" do
  test "avatar returns kata it was created with" do
    avatar = Avatar.new(@kata, 'wolf')    
    assert_equal @kata, avatar.kata    
    avatar = Avatar.create(@kata, 'wolf') 
    avatar = Avatar.create(@kata, 'wolf')
    avatar = Avatar.create(@kata, 'wolf')    
    avatar = Avatar.create(@kata, 'wolf')
    avatar = Avatar.create(@kata, 'wolf')    
    avatar = Avatar.create(@kata, 'wolf')  # creates tag-0
    avatar = Avatar.create(@kata, 'wolf')
    avatar = Avatar.create(@kata, 'wolf') # 0
    avatar = Avatar.create(@kata, 'wolf') # 0