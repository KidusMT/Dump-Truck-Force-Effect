using DynamicsProject.Models;
using DynamicsProject.UserCtrls;
using KarliCardGame.UserCtrls;
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

namespace DynamicsProject
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void newQuestion_Click(object sender, RoutedEventArgs e)
        {
            HydraulicsQuestion q = new HydraulicsQuestion("New Message for data input", 0.0, 0.0, 0.0);
            QuestionCtrl ctrl = new QuestionCtrl();
            ctrl.DataContext = q;

            //double x, y, z;

            ctrl.submit.Click += (sender2, arg) =>
            {                
                //Calculate using the formula
                //
                ResultCtrl resctrl = new ResultCtrl();
                resctrl.DataContext = ctrl.calculate();
                containetCtrl.Content = resctrl;
            };


            containetCtrl.Content = ctrl;
        }

        private void drawGraph_Click(object sender, RoutedEventArgs e)
        {
            var x = new ResultGraph(new int[] { 20,100,200,300,400 }, new int[] { 20,200,100,300,200 });
            x.DrawGraph();
            containetCtrl.Content = x;
        }

        private void exit(object sender, RoutedEventArgs e)
        {
            // exiting the system
            Close();
            
        }

        private void about_app(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("Dumber Load Capacity Calculator \nVersion : alph version - V.0 ", "About the App", MessageBoxButton.OK);
        }

        private void about_us(object sender, RoutedEventArgs e)
        {
            string message = "\n ABOUT THE DEVELOPERS OF THE APP\n"
                            + "--> Mikael Mandefro\n"
                            + "--> Kidus  Mame\n"
                            +"-->  Hizkiyax Abraham\n"
                            + "--> Amente Diriba \n"
                            + "--> Selas  Getachew\n";
            MessageBox.Show(message, "About the Developers", MessageBoxButton.OK);
        }

        
    }
}
