   M S B A M L   `   `   `  ����M  IWpfMedyaOynatıcı, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:WpfMedyaOynatıcıWpfMedyaOynatıcı  5   	   #    WpfMedyaOynatıcı.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   2local clr-namespace:WpfMedyaOynatıcı     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � .+�5
   
   r� -   5         r�Name$ mediaElement1��5
      $��Center=�6/   $	��333��6L   $	��Top=�6Y   $	��797��6q    r� LoadedBehavior$ Manual=�6}   6�   �� 5   
   -   5        $
��Left=�5      $��400,363,0,0q�6-   $	��Top=�6B   $��33��6Z   $��40��6f   .��5      �� $U��OC:\Users\orhan\source\repos\WpfMedyaOynatıcı\WpfMedyaOynatıcı\play_icon.png��6   $��40��6i   6v   5      �� 5   
   -   5        $
��Left=�5      $��466,376,0,0q�6-   $	��Top=�6B   $��28��6Z   .��5      �� $V��PC:\Users\orhan\source\repos\WpfMedyaOynatıcı\WpfMedyaOynatıcı\pause_icon.png��6   6l   5      �� 5   
   -   5        $
��Left=�5      $��346,376,0,0q�6-   $	��Top=�6B   $��28��6Z   .��5      �� $U��OC:\Users\orhan\source\repos\WpfMedyaOynatıcı\WpfMedyaOynatıcı\stop_icon.png��6   6k   5      �� 5   
   -   5        $
��Left=�5      $��
76,363,0,0q�6-   $	��Top=�6A   $��33��6Y   $��40��6e   .��5      �� $Y��SC:\Users\orhan\source\repos\WpfMedyaOynatıcı\WpfMedyaOynatıcı\openfile_icon.png��6   6o   5      �� 5   
   -   5         ��Name$ label_speed��5      $��Speed��6%   $
��Left=�65   $��137,378,0,0q�6P   $	��Top=�6e   �� 5   
   -   5        $��speedRatioSlider��5      $	��Top=�6)    � Minimum$ 1Q�6A   $��185,382,501,0q�6N   $	��120��6�   �� 5   
   -   5         ��Name$ slider1��5      $
��Left=�6"   $��
10,332,0,0q�6=   $	��Top=�6Q   $	��722��6i   $��18��6u    � Maximum$ 0Q�6�   6�   �� 5   
   -	   5        $ slider2��5      $ 0Q�6#   $ 1Q�6/   $
��Left=�6<   $��612,381,0,0q�6W   $	��Top=�6l   $	��120��6�    � Value$ 1Q�6�   �� 5   
   -
   5        $ label_volume��5      $��Volume��6&   $
��Left=�67   $��557,378,0,0q�6R   $	��Top=�6g   �� 5   
   -   5        $ 
label_time��5      $��00:00:00��6$   $
��Left=�67   $��732,328,0,0q�6R   $	��Top=�6g   5!      5"      