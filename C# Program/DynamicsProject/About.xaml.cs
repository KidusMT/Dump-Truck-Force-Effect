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
using System.Windows.Shapes;

namespace DynamicsProject
{
    /// <summary>
    /// Interaction logic for About.xaml
    /// </summary>
    public partial class About : Window
    {
        public About()
        {
            InitializeComponent();
        }

        private void button_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
           
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {

        }

        private void button0_Click(object sender, RoutedEventArgs e)
        {

        textBox.Text = "Welcome To Question-1.This question is about an airplane that is to drop water on brushfires.";
        textBox.Text += "\nUser's input are : ";    
        }

        private void button_Click_1(object sender, RoutedEventArgs e)
        {

        }
    }
}
