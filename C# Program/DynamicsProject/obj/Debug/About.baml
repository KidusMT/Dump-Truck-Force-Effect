   M S B A M L   `   `   `  ����H  DKarliCardGame, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:DynamicsProjectDynamicsProject  5   	       DynamicsProject.About   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:DynamicsProject     5   	   -   5          �Name$  Home_Window��5   	    � Title$  ��5   	   $��564.404��6   $	��300��6#   $	��634��63   $	��434��6?    � 
ResizeMode$ NoResize=�6N   .��5	      � $��1,-3,0,3q�6    � 	Resources 5   
      mycolor �� Color��%*   &	        �� 5      $ Orange��6.   5       � RowDefinitions 5   
   �� 5      $��54 �6   �� 5      $��38 �6   �� 5      .+�5   
   �� ���	#FFB65959$
��Left=�6(   $	��627��6C   .+�5      �� -   5         ��Name$
 logo��5      $��45��6"    �� Left$ 8��6.   
 �� Top$ 7��6>   $��74��6M   $k��eC:\Users\pc\Documents\Visual Studio 2015\Projects\MostOfWpfAppPractices\KarliCardGame\images\logo.ico��6X   �� 5      -   5        	 ��Name$	 heading��5      $!��Welcome To Dynamics Project��6%   $ 77��6K   $ 8��6\   $	��334��6k   $��44��6w   $��Segoe UI Black)�6�   $��18(�6�   
�������6�   5      � 5   
   $��
-1,0,1,416q�6   $��2��6(   $��1��69   .+�5      �� $
��Left=�6   $��37��60   $	��Top=�6<   $	��626��6T   ���	#FFE0B7B3$��1,1,0,0q�5   "   .+�5      o� -   5        
 o�Name$

 menu��5      $��31��6%   $ 7��61   $ 2��6A   $��69��6P    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         Color$ 	#FFBD7272��6+      ShadowDepth$ 3Q�6=   .@�5       m� $��  Start��6   $��31��60   $��71��6<   $��Elephant)�6G   $��14(�6]   .@�5!      �� $��MainWindow.xaml?�6%   .�6C   New6H   m� 5"      $	��New��6#    m� Icon 5#      �� 5$   "   $l��fC:\Users\pc\Documents\Visual Studio 2015\Projects\MostOfWpfAppPractices\KarliCardGame\images\start.png��6(   5&      m� 5'      $
��Open��6#    m� Command$
 Open��61   m� 5(      $
��Ex 1��6#   m� 5)      $
��Exit��6#   5+      5,      5-      5.      �� 5/   
   $��2��6   .��50      �� .+�52      � 
�������$
��Left=�63   $��44��6N   $��	25,20,0,0q�6Z   $��2��6m   $	��Top=�6z   $	��573��6�   .+�53      �� -   5         ��Name$ button0��53      $	��3 0q�60   $��Q1��6?   $��50��6L   $��35��6W   
������� 54        55      $ 4Q�6/      	Direction$	 320Q�6?   $ 	#FFE0BFBF��6O   57      �� 58      -   5        $ button1��58      $	��3 0q�6/   $��Q2��6>   $��50��6K   $��35��6V   
������� 59        5:      $ 4Q�6/   $	 320Q�6?   $ 	#FFE0BFBF��6O   5<      5=      �� 5>      -   5         ��Name$ textBox��5>       �� 
IsReadOnly . $	��299��6=   $��Center=�6J   $��2��6g    �� TextWrapping$
 Wrap=�6t   $?��9	This is where the welcome page will be 
		displayed !!!��6�   $	��Top=�6�   $	��569��6�   $��Segoe UI Black)�6  $��16(�6  .��6+   5?        5@      $ 	#FFD89393��6+   $ 4Q�6=   .��5A   &   5B      �� 5C      $
��Left=�6   $��34��68   $	��Top=�6D   $	��171��6\   
�������.+�5D      �� -   5        $ button��5D      $��> Start��6-   $��33��6B   $��Segoe UI Black)�6N   $��16(�6j   ���	#FFB65959$��Right=�6�   $	��138��6�   $��
0,0,-132,0q�6�    5E        5F      $ 	#FFBF6A6A��6/   $ 3Q�6A   5H      5J      5K      5M      5O      5S      