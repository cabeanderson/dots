curl http://localhost:52199/MCWS/v1/Control/MCC\?Command\=10000 -O /dev/null

#if args.command is None:
#    PlayerManager(blacklist = args.blacklist)
#else:
#    player_manager = PlayerManager(blacklist = args.blacklist, connect = False)
#    current_player = player_manager.getCurrentPlayer()
#    elif args.command == 'play-pause' and current_player:
#        current_player.playpause()
#    elif args.command == 'stop' and current_player:
#        current_player.stop()
#    elif args.command == 'previous' and current_player:
#        current_player.previous()
#    elif args.command == 'next' and current_player:
#current_player.next()
