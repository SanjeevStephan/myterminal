import random
import json

# Open the JSON file for appending
with open('game_data.json', 'a') as f:
    for i in range(10):
        # Generate some random game data
        game_data = {
            'score': random.randint(0, 100),
            'level': random.randint(1, 10),
            'player_name': f'Player {i+1}'
        }
        
        # Convert the game data to JSON and write it to the file
        json_data = json.dumps(game_data)
        f.write(json_data + '\n') # Append the data to the file
        
print('Game data generated and saved.')

