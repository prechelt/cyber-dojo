    before = avatar.visible_files(tag=1)
    after = avatar.visible_files(tag=2)
    avatar = Avatar.create(@kata, 'wolf') # 0
    run_tests(avatar, visible_files) # 1
    run_tests(avatar, visible_files) # 2