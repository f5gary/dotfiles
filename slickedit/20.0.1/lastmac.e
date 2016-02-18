#include "slick.sh"
_command last_recorded_macro() name_info(','VSARG2_MARK|VSARG2_REQUIRES_EDITORCTL)
{
   _macro('R',1);
   find_next();
   _deselect();
   cursor_right();
   deselect();
   _select_char('','E');
   end_line();
   select_it('CHAR','','E');
   copy_to_clipboard();
   last_event(name2event(' '));maybe_complete();
   paste();
   cursor_down();
   end_line();
}
