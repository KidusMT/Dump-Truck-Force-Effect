   M S B A M L   `   `   `  ����H  DKarliCardGame, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:DynamicsProjectDynamicsProject  5   	        DynamicsProject.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   /localclr-namespace:DynamicsProject     5   	     � Title$  
MainWindow��5   	   $	��700��6   $	��600��6+   $��619.736��6:    � 
ResizeMode$ NoResize=�6K   $��811.842��5	   	    � WindowStartupLocation$ CenterScreen=�6    � 	Resources 5         mybutton �� CornerRadius  EntryFieldStyle �� 
TargetType �� Property �� Value��%?  &	        &	 �     �� 5   
   .R�5      �� $��2q�6   
�������$��70��6=   $ 10��6K   ._�5      �� ��6   �� *	Content+5      5      �� 5   
   " �6(   .�5      ��  � ��$ Stretch=�64   �� 5       � ��$ Center=�62   �� 5       � ��$
 20,0q�6'   5      5      .��5      � $��1,-3,0,3q�6    5   
     mycolor �� Color��%*   &	       �� 5      $ Orange��6.   5      	 � RowDefinitions	 5    
   �� 5!      $��54 �6   �� 5"      $��38 �6   �� 5#      $
��465* �6   �� 5$      $	��34* �6   .+�5&   
   �� ���	#FFDE2F2F$
��Left=�6(   $	��694��6C   $��	-1,0,-1,0q�6O   .+�5'      �� -   5        
 ��Name$

 logo��5'      $��45��6"    �� Left$ 8��6.   
 �� Top$ 7��6>   $��74��6M   $W��QC:\Users\pc\Documents\Visual Studio 2015\Projects\DynamicsProject\images\logo.ico��6X   �� 5(      -   5         ��Name$ heading��5(      $5��/Dynamics Final Project : Dumper Load Calculator��6%   $ 77��6_   $ 8��6p   $	��516��6   $��44��6�   $��Segoe UI Black)�6�   $��18(�6�   
�������6�   5)      �� 5*   
   $��
-1,0,1,329q�6   $��2��6)   $��1��6:   .+�5+      ��  �� Orientation$ 
Horizontal=�6   $
��Left=�63   $��40��6N   $	��Top=�6Z   $	��694��6r   ���	#FFE46364$��0,0,-1,1q�5,   "   .+�5-      o� -   5         o�Name$
 menu��5-      $��31��6%   $ 7��61   $ 2��6A   $��69��6P    J� Effect 5.      3  -System.Windows.Media.Effects.DropShadowEffect  5/         Color$ 	#FFBD7272��6+      ShadowDepth$ 3Q�6=   .@�51      m� $��  Start��6   $��31��60   $��71��6<   $��Elephant)�6G   $��14(�6]   .@�53      m� -   5         m�Name$ newQuestion��53   #   $	��New��68    m� Icon 54      �� 55   "   $l��fC:\Users\pc\Documents\Visual Studio 2015\Projects\MostOfWpfAppPractices\KarliCardGame\images\start.png��6(   57      m� 58      $
��Open��6#    m� Command$
 Open��61   m� 59      $��Save As��6#   m� 5:      -   5        $
��Exit��5:   #    5;      �� 5<   "   $[��UC:\Users\pc\Documents\Visual Studio 2015\Projects\DynamicsProject\images\homeicon.png��6(   5>      5?      5A      �� 5B      -   5         ��Name$ 	drawGraph��5B      $��5,3,5,3q�6-   $��Graph��6@   $
��20,0q�6P   $��Elephant)�5C   *   $��14(�6@   ���	#FFF0F0F0 5D        5E      $ 	#FFD89393��6+   $ 4Q�6=   5G      o� 5H      -   5        $ menu2��5H      $��31��6&   $ 7��62   $ 2��6B   $��69��6Q    5I        5J      $ 	#FFBD7272��6+   $ 3Q�6=   .@�5L      m� -   5        $ about��5L      $��  About��6.   $��31��6?   $��71��6K   $��Elephant)�6V   $��14(�6l   .@�5N      m� -	   5        $ aboutus��5N   #   $��About Us��64    5O      �� 5P   "   $��images\start.png��6(   5R      m� 5T      -
   5        $ aboutApp��5T   #   $��	About App��65    5U      �� 5V   "   $��images\start.png��6(   5X      5Y      5[      5\      5]      �� 5^   
   -   5         ��Name$ containetCtrl��5^      $��2��60   $��2��6=   .��5a      ]� 
�������.+�5b      �� $	��Top=�6    �� Padding$ 0 10 0 0q�6.   $��0q�6A   
�������$��45��6_   ._�5c      �� $��Viner Hand ITC)�6   $��17(�68   $
��Bold"�6F   .��6Y   PNWelcome To Dumper Load Calculator, where calculating load become fascinating !6�   5d      �� 5e      $	��Top=�6   $ 10q�6.   
�������$��45��6N   $	��450��6Z   ._�5f      �� $��Segoe UI Black)�6   $��16(�68   $��5q�6F   $��	0,-4,0,-6q�6R   .��6e   75Our aim is to make calcuating the load of this easier6�   5g      �� 5h      $
��Left=�6   $ 10q�6/   $��5q�6<   ���	#FFFBFBFA$��2��6^   ._�5i      �� 5k      5l      �� 5m      $��Bottom=�6   $��0q�61   $	��400��6=   $��Right=�6I   ._�5n      �� $��Segoe UI Black)�6   $��	5 0 15 15q�68   $��14(�6L   $��Right=�6Z   .��6v   !Burgman Dumber RC Model - Truck6�   5o      �� 5p      $ 10q�6   $��5q�6&   
�������._�5q      �� $^��XC:\Users\pc\Documents\Visual Studio 2015\Projects\DynamicsProject\images\maincontent.jpg��6   5r      5s      5w      5y      5{      