using KarliCardGame.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DynamicsProject.Models
{
    class HydraulicsQuestion
    {
        public string Question { get; set; }
        public double Volume { get; set; }
        public double PistelLevel { get; set; }
        public double PushTime { get; set; }

        public MaterialType Material { get; set; }

        public HydraulicsQuestion(string q,double in1,double in2, double in3)
        {
            Question = q;
            Volume = in1;
            PistelLevel = in2;
            PushTime = in3;
            //Material = material;
        }

    }
}
