using DynamicsProject.Models;
using KarliCardGame.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
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

namespace DynamicsProject.UserCtrls
{
    /// <summary>
    /// Interaction logic for QuestionCtrl.xaml
    /// </summary>
    public partial class QuestionCtrl : UserControl
    {

        ObservableCollection<MaterialType> Materials = new ObservableCollection<MaterialType>()
        {
            new MaterialType("Metal", 1442),
            new MaterialType("Wood", 1400),
            new MaterialType("Soil", 1600)
        };

        public QuestionCtrl()
        {
            InitializeComponent();
            materialtype.ItemsSource = Materials;
        }

        internal ResultModel calculate()
        {
            //Calculate Logic
            var material = Materials[materialtype.SelectedIndex];
            var volume = double.Parse(volumeBox.Text);
            var pistelLvl = double.Parse(pistelLevelBox.Text);
            var pushTimee = double.Parse(pushTimeBox.Text);

            // *********** the start of the calculation part ***************** //


            var loadUnloaded = 0.0;//Calculate the load

            // computing the mass from the density and volume 
            var mass = 15.2 * material.Densisty; // setted the density
            var weight = mass * 9.81;

            var maxAngleAcceleration =  (  pistelLvl -  weight) / mass ; //Compute
            // findig the velocity so as to find the maximuim volume 
            var vf = maxAngleAcceleration * pushTimee;

            //// Angle teta found
            // the dimensions of our dumper 
            var length = 3.5;
            var width = 2.0;
            var height = 2.0;
            var raduis = length / 2; // assuming that the mass is concentrated in the center
            var maxAngleInRad = (( vf*vf ) / (maxAngleAcceleration * raduis)) * (3.14 / 180);
            //var maxAngle = ((maxAngleInRad * (180 / 3.14)) % 90 ) / 2;
            // finding the load unloaded
            
            var maxAngle = ((maxAngleInRad * (180 / 3.14)) % 90) + 15 ;
            var a2 = 9.81 *  Math.Sin(maxAngleInRad * (3.14 / 180) );
            var unloadingVelocity = a2 * pushTimee;
            var distance = unloadingVelocity * unloadingVelocity / (2 * a2);
            loadUnloaded = distance * width * height * 3; 

            return new ResultModel(volume, pistelLvl, pushTimee, loadUnloaded, maxAngle, material);
        }



        private void submit_Click(object sender, RoutedEventArgs e)
        {
            double x;
            if (!double.TryParse(volumeBox.Text.Trim(), out x) || !double.TryParse(pistelLevelBox.Text.Trim(), out x) || !double.TryParse(pushTimeBox.Text.Trim(), out x))
            {
                MessageBox.Show("Ooops! Invalid Data Fed!","Error", MessageBoxButton.OK, MessageBoxImage.Error);
                e.Handled = true;
            }
            else if (double.Parse(volumeBox.Text.Trim())>15.2d)
            {
                MessageBox.Show("Ooops! Overloaded! Volume should be less than 15.2m^3", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                e.Handled = true;
            }
        }

        private void input1_LostFocus(object sender, RoutedEventArgs e)
        {

        }
    }
}
