   M S B A M L   `   `   `  ����H  DKarliCardGame, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:DynamicsProject.UserCtrlsDynamicsProject.UserCtrls  5      ,    &DynamicsProject.UserCtrls.QuestionCtrl   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:DynamicsProject.UserCtrls     5      .��5	      � .+�5   
   �� -   5          ��Name$  question��5       �� TextAlignment$ Center=�6&   $
��Left=�6=   $��	27,43,0,0q�6X   $
��Wrap=�6k   $	��Top=�6   $��83��6�   $	��450��6�   $��Segoe UI Black)�6�   $��16(�6�   
�������$7��1To start the calculation, Fill you requirements !��5   '    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 4Q�6#      ShadowDepth$ 3Q�62      Color$ 	#FFE66F6F��6B   5      �� 5   
   $
��Left=�6    �� Orientation$ Vertical=�60   $	��300��6G   $��
27,173,0,0q�6T   $	��Top=�6h   $	��449��6�   .+�5      �� $ 
Horizontal=�6   .+�5      �� $	��180��6   ���	#FFDE2F2F$��Segoe UI Black)�6<   $��16(�6X   $
��0 15q�6f   .��6u   Material type :5      �� 5      -   5         ��Name$ materialtype��5       �� DisplayMemberPath$ MaterialName��61   	 �� SelectedIndex$	 0��6R   $��Segoe UI Black)�6d   $��14(�5      
 �� 
IsEditable
 . $	��230��6;   $��36��6G   $��2q�6S   5      �� 5      $ 
Horizontal=�6   .+�5      �� $	��180��6   ���	#FFDE2F2F$��Segoe UI Black)�6<   $��16(�6X   $
��0 15q�6f   .��6u   Load Volume ( M^3) :5       �� 5!      -   5         ��Name$ 	volumeBox��5!      
�������$��3q�6E   $��5q�6Y   $	��3 5q�6d   $��14(�5"      $	��230��6(   $��36��64   $��Segoe UI Black)�6@   5#      �� 5$      $ 
Horizontal=�6   .+�5%      �� $	��180��6   ���	#FFDE2F2F$��Segoe UI Black)�6<   $��16(�6X   $��3 9 6 6 q�6f   .��6z   Pistle Force ( N ) :5'      �� 5(      -   5        $ pistelLevelBox��5(      
�������$��3q�6t   $��5q�6�   $	��3 5q�6�   $��14(�5)      $	��230��6(   $��36��64   $��Segoe UI Black)�6@   ��5(   2   �� *PistelLevel+ �� Mode$ TwoWay=�5)   @   5*      �� 5+      $ 
Horizontal=�6   .+�5,      �� $	��180��6   ���	#FFDE2F2F$��Segoe UI Black)�6<   $��16(�6X   $��3 9 6 6 q�6f   .��6y   Lift Time ( Second ) :5.      �� 5/      -   5        $ pushTimeBox��5/      
�������$��3q�6n   $��5q�6�   $	��3 5q�6�   $��14(�50      $	��230��6(   $��36��64   $��Segoe UI Black)�6@   ��5/   /   �� *
PushTime+$ TwoWay=�50   @   51      �� 52      $ 
Horizontal=�6   .+�53      �� $	��180��6   
�������$��Segoe UI Black)�68   $��16(�6T   $��3 9 6 6 q�6d   .��6w   Lift Time ( Second ) :55      �� 56      -   5         ��Name$ submit��56      $��Submit��6+   
������$��2q�6j   $��5q�6~   $��0q�57      $	��230��6&   $��36��62   58      59      5;      5<      