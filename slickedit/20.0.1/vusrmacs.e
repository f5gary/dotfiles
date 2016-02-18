#include "slick.sh"
_command foo() name_info(','VSARG2_MACRO|VSARG2_MARK|VSARG2_REQUIRES_MDI_EDITORCTL)
{
   _macro('R',1);
   find_next();
   find_next();
   end_line();
   select_it('CHAR','','E');
   delete_selection();
   cursor_down();
   begin_line_text_toggle();
}
