using DynamicsProject;
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
//importing 
using System.Windows.Threading;
namespace KarliCardGame
{
    /// <summary>
    /// Interaction logic for SplashScreen.xaml
    /// </summary>
    public partial class SplashScreen : Window
    {

        DispatcherTimer dT = new DispatcherTimer();
        public SplashScreen()
        {
            InitializeComponent();
            dT.Tick += new EventHandler(dt_Tick);
            dT.Interval = new TimeSpan(0, 0, 3);
            dT.Start();    
            
        }

        private void dt_Tick(object sender, EventArgs e)
        {

            MainWindow window = new MainWindow();
            window.Show();
           

            dT.Stop();
            this.Close();
        }
    }
}
