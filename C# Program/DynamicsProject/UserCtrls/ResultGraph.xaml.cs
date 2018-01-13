using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace KarliCardGame.UserCtrls
{
    /// <summary>
    /// Interaction logic for ResultGraph.xaml
    /// </summary>
    public partial class ResultGraph : UserControl
    {

        public int[] X { get; set; }
        public int[] Y { get; set; }


        public ResultGraph(int[] x, int[] y)
        {
            InitializeComponent();
            X = x;
            Y = y;
            //Loop Arrange
        }

        public void DrawGraph()
        {
            Line yL = new Line() { StrokeThickness = 2, Stroke = Brushes.Black };
            yL.Y1 = 10;
            yL.Y2 = 35 + Y.Max();
            yL.X1 = yL.X2 = 50;

            graphCanvas.Children.Add(yL);



            Line xL = new Line() { StrokeThickness = 2, Stroke = Brushes.Black };
            xL.X1 = 50;
            xL.Y1 = xL.Y2 = 35 + Y.Max();
            xL.X2 = 100 + X.Max();

            graphCanvas.Children.Add(xL);

            //Write X-Label
            TextBlock xlbl = new TextBlock() { Text = "Y(time)" };
            graphCanvas.Children.Add(xlbl);

            Canvas.SetTop(xlbl, 27 + Y.Max());
            Canvas.SetLeft(xlbl, 120 + X.Max());





            //Drawa Labels
            for (int i = 0; i < X.Length; i++)
            {
                //label for the x compent 
                TextBlock lbl = new TextBlock() { Text = X[i].ToString() };
                graphCanvas.Children.Add(lbl);

                Canvas.SetTop(lbl, 10 + (Y.Max()) + 4 + 25);
                Canvas.SetLeft(lbl, 50 + X[i] - 4);
                Line xLs = new Line() { StrokeThickness = 1.5, Stroke = Brushes.Black };
                xLs.X1=xLs.X2 = 50 + X[i];
                xLs.Y1 = 10 + (Y.Max()) + 22;
                xLs.Y2 = 10 + (Y.Max()) +  30;

                graphCanvas.Children.Add(xLs);



                TextBlock lblY = new TextBlock() { Text = Y[i].ToString() };
                graphCanvas.Children.Add(lblY);

                Canvas.SetTop(lblY, 10 + (Y.Max() - Y[i]) - 4 + 17);
                Canvas.SetLeft(lblY, 20);

                Line xLY = new Line() { StrokeThickness = 1.5, Stroke = Brushes.Black };
                xLY.Y1 = xLY.Y2 = 10 + (Y.Max() - Y[i]) - 4 + 25;
                xLY.X1 = 48;
                xLY.X2 = 52;

                graphCanvas.Children.Add(xLY);

            }




            for (int i = 0; i < X.Length; i++)
            {
                Ellipse myPt = new Ellipse()
                {
                    Fill = Brushes.Brown,
                    Stroke = Brushes.Black,
                    StrokeThickness = 2,
                    Width = 8,
                    Height = 8
                };
                graphCanvas.Children.Add(myPt);

                Canvas.SetTop(myPt,10+(Y.Max()-Y[i])-4+25);
                Canvas.SetLeft(myPt, 50 + X[i]-4);

            }

            for (int i = 0; i < X.Length-1; i++)
            {
                Line incL = new Line() { Stroke= Brushes.CadetBlue, StrokeThickness=0.7};
                incL.X1 = 50 + X[i];
                incL.X2 = 50 + X[i+1];
                incL.Y1 = 10 + (Y.Max() - Y[i])+25;
                incL.Y2 = 10 + (Y.Max() - Y[i+1])+25;

                graphCanvas.Children.Add(incL);
                

            }


        }
    }
}
