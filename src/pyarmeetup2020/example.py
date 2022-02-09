import random

options = [
    'No', 'Never', 'Nooo!', "Please don't", "Probably not", 
    "Just in extreme cases, but you should consider it a workaround"
]

def should_i_pin_pip(*args, **kwargs) -> str:
    return random.choice(options)
