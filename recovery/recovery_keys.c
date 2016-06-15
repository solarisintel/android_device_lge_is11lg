#include <linux/input.h>

#include "recovery_ui.h"
#include "common.h"
#include "extendedcommands.h"


int device_toggle_display(volatile char* key_pressed, int key_code) {
    if (ui_get_showing_back_button()) {
        return 0;
    }
    return get_allow_toggle_display() && (key_code == KEY_HOME || key_code == KEY_MENU || key_code == KEY_POWER || key_code == KEY_END);
}

int device_handle_key(int key_code, int visible) {
    if (visible) {
    	switch (key_code) {
    		case KEY_DOWN:
    		case KEY_VOLUMEDOWN:
    		case KEY_MENU:
      			return HIGHLIGHT_DOWN;
			break;
      
    		case KEY_UP:
    		case KEY_VOLUMEUP:
      			return HIGHLIGHT_UP;
			break;

    		case KEY_POWER:
    		case KEY_HOME:
		case KEY_ENTER:
	  		if (ui_get_showing_back_button()) {
                    		return SELECT_ITEM;
                	}
                	if (!get_allow_toggle_display() && !ui_root_menu) {
                   		 return GO_BACK;
                	}
                	break;

        	case KEY_BACK:
                	if (!ui_root_menu) {
                    		return GO_BACK;
                	}
   	}
    }
    return NO_ACTION;
}




