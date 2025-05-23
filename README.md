# Picture-This
An app where you draw and an algorithm guesses what it is and reviews it, can you draw well enough to not get brutally roasted by a snobbish AI? 
Draw a cat, dog, tree, cloud, fish, house, car, person flower or sun (More words to be made availble soon) and watch AI identify what you have drawn and review it !
### Requirements and Usage

- Python 3.8+
- Godot 4
- `pip install -r requirements.txt`
- Environment variable:
  ```bash
  export GROQ_API_KEY=your_groq_key_here

- You can then run the backend using 'python CritiqueGenerator.py'
- Then download the Godot Frontend and run the app, once you do you can start drawing on the drawing board, when you are happy with the drawing click the "Save" button and then
  "Review" to generate the review !
- The "Clear" button can be used anytime you are unhappy with the drawing currently made and want to start over


### Currently Improving

- Looking to deploy Godot frontend on itch.io and the Flask app
- Looking to create an eraser tool that deletes select strokes
- Looking to create adjustable brush widths with multiple colors


