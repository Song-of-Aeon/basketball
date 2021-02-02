c_input();

if (characters < message_length) && choosing = 0 { 
    hold = true; //change if maybe
    skip = jump;
    
    characters += increase * (2 + hold);
    if choiceno < array_length_1d(choiceat) && message_current = choiceat[choiceno] {
        choicesetdraw[0] = choice[choiceno*2];
        choicesetdraw[1] = choice[choiceno*2+1];
        starting = 1;
    }
    
    if skip {
        characters = message_length;
    }
    message_draw = string_copy(message[message_current], 0, characters);
} else if choosing != 2 { 
    if jump { 
        if starting = 1 {
            starting = 0;
            choosing = 1;
            exit;
        }
        if (message_current < message_end) && (message_current != message_end2[choiceno]) {
            message_current += 1;
            message_length = string_length(message[message_current]);
            characters = 0;
            message_draw = "";
        } else { 
            instance_destroy();
            global.me.movestate = st_standard;
            
        }
        if savedpoint != 0 {
            
        }
    }
}
if up || down {
    if chooser = 0 {
        chooser = 1;
    } else if chooser = 1 {
        chooser = 0;
    }
}
if choosing = 1 {
    if select {
        choosing = 0;
        savedpoint = 0;
        message_current = choiceoutcome[choiceno*2+chooser];
        message_length = string_length(message[message_current]);
        characters = 0;
        message_draw = "";
        INITIALIZE.state = c_null;
        choiceno++;
    }
}
