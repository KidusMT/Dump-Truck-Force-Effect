   M S B A M L   `   `   `  ����H  DKarliCardGame, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:DynamicsProject.UserCtrlsDynamicsProject.UserCtrls  5      *    $DynamicsProject.UserCtrls.ResultCtrl   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:DynamicsProject.UserCtrls     5      $	��800��5      $��504.135��6+   .��5	      � $��0q�6   .+�5
   
   �� -   5          ��Name$  question��5
       �� TextAlignment$ Center=�6&   $
��Left=�6=   $��	27,43,0,0q�6X   $
��Wrap=�6k   $	��Top=�6   $��52��6�   $	��450��6�   $��Segoe UI Black)�6�   $��16(�6�   
�������$��Analytical Representation��5   '    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 4Q�6#      ShadowDepth$ 3Q�62      Color$ 	#FFE66F6F��6B   5      �� 5   
   $
��Left=�6    �� Orientation$ Vertical=�60   $	��362��6G   $��
27,111,0,0q�6T   $	��Top=�6h   $	��449��6�   .+�5      �� $ 
Horizontal=�6   .+�5      �� $	��180��6   ���	#FFDE2F2F$��Segoe UI Black)�6<   $��16(�6X   $
��0 15q�6f   .��6u   Material type :5      �� 5      -   5        $  material_type��5       �� Padding$ 3 9 6 6 q�6M   $��14(�5      $	��230��6(   $��36��64   $��Segoe UI Black)�6@   ��5   3   �� *
Material+5   @   5      �� 5      $ 
Horizontal=�6   .+�5      �� $	��180��6   ���	#FFDE2F2F$��Segoe UI Black)�6<   $��16(�6X   $
��0 15q�6f   .��6u   Load Volume ( M^3) :5      �� 5      -   5        $  Volume��5      $ 3 9 6 6 q�6Q   $��14(�5      $	��230��6(   $��36��64   $��Segoe UI Black)�6@   ��5   ,   �� *Volume+ �� Mode$ TwoWay=�5   @   5      �� 5      $ 
Horizontal=�6   .+�5       �� $	��180��6   ���	#FFDE2F2F$��Segoe UI Black)�6<   $��16(�6X   $��3 9 6 6 q�6f   .��6z   Pistle Force ( N ) :5"      �� 5#      -   5        $  PistelLevel��5#      $��5q�6[   $	 3 5q�6f   $��14(�5$      $	��230��6(   $��36��64   $��Segoe UI Black)�6@   ��5#   1   �� *PistelLevel+$ TwoWay=�5$   @   5%      �� 5&      $ 
Horizontal=�6   .+�5'      �� $	��180��6   ���	#FFDE2F2F$��Segoe UI Black)�6<   $��16(�6X   $��3 9 6 6 q�6f   .��6y   Lift Time ( Second ) :5)      �� 5*      -   5        $  PushTime��5*      $��5q�6U   $	 3 5q�6`   $��14(�5+      $	��230��6(   $��36��64   $��Segoe UI Black)�6@   ��5*   .   �� *
PushTime+$ TwoWay=�5+   @   5,      �� 5-      $ Vertical=�6   .+�5.      �� .+�5/      �� $��Center=�6   $��Minion Pro Med)�69   $��26(�6U   $��0 15 0 5q�6c   
��� � �$��Italic$�6�   $
��Bold"�6�   .��6�   Calculated Result51      52      �� 53      $ 
Horizontal=�6   .+�54      �� $	��180��6   ���	#FFDE2F2F$��Segoe UI Black)�6@   $��16(�6\   $
��0 15q�6j   .��6y   Maximum Left( Deg ) :56      �� 57      -   5        $  reslt1��57       $��5q�6T   $ 3 9 6 6 q�6_   $��14(�58      $	��230��6(   $��36��64   $��Segoe UI Black)�6@   ��57   0   �� *AngleOfInclination+58   @   59      �� 5:      $ 
Horizontal=�6   .+�5;      �� $	��180��6   ���	#FFDE2F2F$��Segoe UI Black)�6@   $��16(�6\   $
��0 15q�6j   .��6y   Load Unloaded( V^3) :5=      �� 5>      -   5        $  reslt2��5>       $��5q�6N   $ 3 9 6 6 q�6Y   $��14(�5?      $	��230��6(   $��36��64   $��Segoe UI Black)�6@   ��5>   0   �� *LoadUnloaded+5?   @   5@      5A      5B      5E      5F      