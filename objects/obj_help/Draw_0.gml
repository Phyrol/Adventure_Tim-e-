draw_set_color(c_red);
draw_set_font(fnt_text_bold);
draw_text(x, y, "Story:");
draw_set_font(fnt_text);
draw_set_color(c_white);
draw_text(x + 5, y + 20, "Tim's dad was an adventurer and a famous dragon slayer. Tim, however,");
draw_text(x + 5, y + 40, "liked to stay inside and be by himself playing with Barbie dolls.");
draw_text(x + 5, y + 60, "Luckily, Tim had his mom around to take care of him. One day,");
draw_text(x + 5, y + 80, "Tim's dad didn't return home for dinner. Rumor had spread that he was");
draw_text(x + 5, y + 100, "killed by the evil wizard. Tim was very sad and angry, so he decided");
draw_text(x + 5, y + 120, "to go out on his own and slay the dragon that killed his father. After");
draw_text(x + 5, y + 140, "saying goodbye to his Barbie dolls, he grabbed the family gun and set");
draw_text(x + 5, y + 160, "out on his own adventure to avenge his father.");

draw_set_color(c_red);
draw_set_font(fnt_text_bold);
draw_text(x, y + 190, "Controls:");
draw_set_font(fnt_text);
draw_set_color(c_white);
draw_text(x + 5, y + 210, "Z -          Shoot");
draw_text(x + 5, y + 230, "Up Arrow -   Jump/Climb");
draw_text(x + 5, y + 250, "Down Arrow - Climb");
draw_text(x + 5, y + 270, "Left/Right - Move");
draw_text(x + 5, y + 290, "ESC -        Back to Menu");
draw_text(x + 5, y + 310, "F -          Enter/Exit Fullscreen");

draw_set_color(c_red);
draw_set_font(fnt_text_bold);
draw_text(x, y + 340, "Cheat Keys:");
draw_set_font(fnt_text);
draw_set_color(c_white);
draw_text(x + 5, y + 360, "I - Invicibility (99999 Health)");
draw_text(x + 5, y + 380, "O - Set Health Back to 100");
draw_text(x + 5, y + 400, "N - Next Room");
draw_text(x + 5, y + 420, "P - Previous Room");
draw_text(x + 5, y + 440, "R - Restart Game");

//over on the right side
draw_set_color(c_red);
draw_set_font(fnt_text_bold);
draw_text(x + 350, y + 250, "Title:");
draw_set_font(fnt_text);
draw_set_color(c_white);
draw_text(x + 350, y + 270, "Adventure Tim(e)");

draw_set_color(c_red);
draw_set_font(fnt_text_bold);
draw_text(x + 350, y + 330, "Checkpoints:");
draw_set_font(fnt_text);
draw_sprite(spr_checkpoint_HELP, 0, x + 390, y + 360);