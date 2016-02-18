#include 'slick.sh'
_form _tbstandard_form {
   p_backcolor=0x80000005;
   p_border_style=BDS_SIZABLE;
   p_caption='Standard';
   p_CaptionClick=true;
   p_forecolor=0x80000008;
   p_height=900;
   p_tool_window=true;
   p_visible=false;
   p_width=2000;
   p_x=0;
   p_y=0;
   p_eventtab2=_qtoolbar_etab2;
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='new';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Create an Empty File to Edit';
      p_Nofstates=1;
      p_picture='bbnew.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=1;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=180;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='gui-open';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Open a File for Editing';
      p_Nofstates=1;
      p_picture='bbopen.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=2;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=600;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='save';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Save Current File';
      p_Nofstates=1;
      p_picture='bbsave.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=3;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=1020;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='history_diff_machine_file';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='List Backup History for Current File';
      p_Nofstates=1;
      p_picture='bbsave_history.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=4;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=1440;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='activate-deltasave';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='List Backup History for Current File';
      p_Nofstates=1;
      p_picture='bbsave_history.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=5;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=1860;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='gui-print';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Print Current File';
      p_Nofstates=1;
      p_picture='bbprint.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=6;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=2280;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='cut';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Delete Selected Text and Copy to the Clipboard';
      p_Nofstates=1;
      p_picture='bbcut.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=7;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=2700;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='copy-to-clipboard';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Copy Selected Text to the Clipboard';
      p_Nofstates=1;
      p_picture='bbcopy.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=8;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=3120;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='paste';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Paste Clipboard into Current File';
      p_Nofstates=1;
      p_picture='bbpaste.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=9;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=3540;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='select-code-block';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Select Lines in the Current Code Block';
      p_Nofstates=1;
      p_picture='bbselect_code_block.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=10;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=3960;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='undo';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Undo the Last Edit Operation';
      p_Nofstates=1;
      p_picture='bbundo.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=11;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=4380;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='redo';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Undo the Last Undo Operation';
      p_Nofstates=1;
      p_picture='bbredo.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=12;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=4800;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='back';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Navigate Backward';
      p_Nofstates=1;
      p_picture='bbback.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=13;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=5220;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='forward';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Navigate Forward';
      p_Nofstates=1;
      p_picture='bbforward.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=14;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=5640;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='gui-find';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Search for a String You Specify';
      p_Nofstates=1;
      p_picture='bbfind.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=15;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=6060;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='find-next';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Search for the Next Occurrence of the String You Last Searched';
      p_Nofstates=1;
      p_picture='bbfind_next.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=16;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=6480;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='gui-replace';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Search for a String and Replace it with Another String';
      p_Nofstates=1;
      p_picture='bbreplace.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=17;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=6900;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='fullscreen';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Toggle Full Screen Editing Mode';
      p_Nofstates=1;
      p_picture='bbfullscreen.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=18;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=7320;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='config';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Displays the configuration options dialog';
      p_Nofstates=1;
      p_picture='bbconfig.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=19;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=7740;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='help -contents';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='SlickEdit Help';
      p_Nofstates=1;
      p_picture='bbvsehelp.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=20;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=8160;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
}
_form _tbtagging_form {
   p_backcolor=0x80000005;
   p_border_style=BDS_SIZABLE;
   p_caption='Context Tagging'VSREGISTEREDTM_TITLEBAR;
   p_CaptionClick=true;
   p_forecolor=0x80000008;
   p_height=900;
   p_tool_window=true;
   p_visible=false;
   p_width=2000;
   p_x=0;
   p_y=0;
   p_eventtab2=_qtoolbar_etab2;
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='gui-make-tags';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Build Tag Files for Use by the Symbol Browser and Other Context Tagging'VSREGISTEREDTM' Features';
      p_Nofstates=1;
      p_picture='bbmake_tags.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=1;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=180;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='gui-push-tag';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Activate the Find Symbol Tool Window to Locate Tags';
      p_Nofstates=1;
      p_picture='bbfind_symbol.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=2;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=600;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='cb-find';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Find the Symbol under the Cursor and Display in Symbol Browser';
      p_Nofstates=1;
      p_picture='bbclass_browser_find.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=3;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=1020;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='push-ref';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Go to Reference';
      p_Nofstates=1;
      p_picture='bbfind_refs.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=4;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=1440;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='push-tag';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Go to Definition';
      p_Nofstates=1;
      p_picture='bbpush_tag.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=5;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=1860;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='push-alttag';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Go to Declaration';
      p_Nofstates=1;
      p_picture='bbpush_decl.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=6;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=2280;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='pop-bookmark';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Pop the Last Bookmark';
      p_Nofstates=1;
      p_picture='bbpop_tag.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=7;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=2700;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='next-tag';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Place Cursor on Next Symbol Definition';
      p_Nofstates=1;
      p_picture='bbnext_tag.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=8;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=3120;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='prev-tag';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Place Cursor on Previous Symbol Definition';
      p_Nofstates=1;
      p_picture='bbprev_tag.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=9;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=3540;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='end-tag';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Place Cursor at the End of the Current Symbol Definition';
      p_Nofstates=1;
      p_picture='bbend_tag.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=10;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=3960;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='function-argument-help';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Display Prototype(s) and Highlight Current Argument';
      p_Nofstates=1;
      p_picture='bbfunction_help.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=11;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=4380;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='list-symbols';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='List Valid Symbols for Current Context';
      p_Nofstates=1;
      p_picture='bblist_symbols.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=12;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=4800;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='refactor_quick_rename precise';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Rename Symbol under Cursor';
      p_Nofstates=1;
      p_picture='bbrefactor_rename.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=13;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=5220;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
}
_form _tbandroid_form {
   p_backcolor=0x80000005;
   p_border_style=BDS_SIZABLE;
   p_caption='Android';
   p_CaptionClick=true;
   p_forecolor=0x80000008;
   p_height=900;
   p_tool_window=true;
   p_visible=false;
   p_width=2000;
   p_x=0;
   p_y=0;
   p_eventtab2=_qtoolbar_etab2;
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='android_avd_manager';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Launch Android Virtual Device Manager';
      p_Nofstates=1;
      p_picture='bbandroid_avd.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=1;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=180;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='android_sdk_manager';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Launch Android SDK Manager';
      p_Nofstates=1;
      p_picture='bbandroid_sdk.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=2;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=600;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
   _image  {
      p_auto_size=true;
      p_backcolor=0x80000005;
      p_border_style=BDS_NONE;
      p_command='android_ddms';
      p_forecolor=0x80000008;
      p_height=360;
      p_max_click=MC_SINGLE;
      p_message='Launch DDMS (Dalvik Debug Monitor)';
      p_Nofstates=1;
      p_picture='bbandroid_ddms.ico';
      p_stretch=false;
      p_style=PSPIC_HIGHLIGHTED_BUTTON;
      p_tab_index=3;
      p_tab_stop=false;
      p_value=0;
      p_width=372;
      p_x=1020;
      p_y=40;
      p_eventtab2=_ul2_picture;
   }
}

defmain()
{
   _config_modify_flags(CFGMODIFY_RESOURCE);
}
