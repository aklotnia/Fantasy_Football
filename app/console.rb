# class Console

#     #create new team
#     #see saved_teams
#     #play a match
#     # exit
# end

def console
    puts `clear`
    startup_ascii_art
    my_username = greetings
    @console_prompt = TTY::Prompt.new
    puts "Logging you in..."
    sleep(0.5)
    new_team = "Create New Team"
    saved_team = "See Saved Teams"
    wins_losses = "See Your Wins and Losses"
    vs_computer = "VS the Computer"
    vs_saved_teams = "VS Other Teams"
    exit_console = "EXIT"
    console_ar = [new_team, saved_team, wins_losses, vs_computer, vs_saved_teams, exit_console]
    while true
        sleep (1)
        puts `clear`
        console_response = @console_prompt.select("What would you like to do?", console_ar)
        if console_response == new_team
            my_username.new_team
        elsif console_response == saved_team
            my_username.my_teams
        elsif console_response == wins_losses
            my_username.calculate_wins_losses
        elsif console_response == vs_computer
            my_username.vs_computer
        elsif console_response == vs_saved_teams
            user_select_team = my_username.my_teams
            my_username.calculate_vs_other_team(user_select_team)
            # if user_select_team == 2
            #     #this does nothing
            # else #user_select_team == 1
            #     opponent_team = my_username.vs_saved_teams
            #     opponent_team_ar = opponent_team.attributes.to_a

            #     user_select_team.shift
                
            #     #remove team id for ascii art then remove teamname for math stuff
            #     opponent_team_ar.shift(1)
            #     opponent_team_ar.pop
            #     my_username.ascii_art(opponent_team_ar)
            #     opponent_team_ar.shift(1)

            #     average = my_username.average_team_rating(user_select_team)
            #     team_stats = my_username.get_team_stats(user_select_team)
            #     weighted_stat = my_username.weighted_rating(average, team_stats)

            #     opp_average = my_username.average_team_rating(opponent_team_ar)
            #     opp_team_stats = my_username.get_team_stats(opponent_team_ar)
            #     opp_weighted_stat = my_username.weighted_rating(opp_average, opp_team_stats)

            #     #present the stats
            #     my_username.determine_winner(average, team_stats, weighted_stat, opp_average, opp_team_stats, opp_weighted_stat)
            # end

        elsif console_response == exit_console
            puts "Exiting..."
            sleep (0.5)
            puts `clear`
            exit
        end
    end
end