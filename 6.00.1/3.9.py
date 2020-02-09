from __future__ import print_function

print('Please think of a number between 0 and 100!')
found=False
guess=50
low=0
high=100

while True:
    print('Is your secret number '+str(guess)+'?',end="")
    valid=False
    while not valid:
        userInput=raw_input(('\n'+"Enter 'h' to indicate the guess is too high. "+
        "Enter 'l' to indicate the guess is too low.Enter 'c' to indicate I guessed corretly."))
        if userInput in ['h','c','l']:
            valid=True
        else:
            print("Sorry, I did not understand your input.")
    if userInput=='c':
        break
    if userInput=='h':
        high=guess
    elif userInput=='l':
        low=guess
    guess=(high+low)/2
print('Game over. Your secret number was: '+str(guess))
      
    