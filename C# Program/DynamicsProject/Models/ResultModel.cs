using KarliCardGame.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DynamicsProject.Models
{
    internal class ResultModel
    {

        public ResultModel(double v1, double v2, double v3,double load,double angle, MaterialType material)
        {
            Volume = v1;
            PistelLevel  = v2;
            PushTime  = v3;
            LoadUnloaded = load;
            AngleOfInclination = angle;
            Material = material.MaterialName;
        }

        public double Volume { get; set; }
        public double PistelLevel { get; set; }
        public double PushTime { get; set; }
        public double LoadUnloaded { get; set; }
        public double AngleOfInclination { get; set; }
        public string Material { get; set; }

    }
}
