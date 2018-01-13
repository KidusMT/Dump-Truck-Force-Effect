using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace KarliCardGame.Models
{
    class MaterialType
    {
        

        public MaterialType(string v1, int v2)
        {
            MaterialName = v1;
            Densisty = v2;
        }

        public string MaterialName { get; set; }
        public double Densisty { get; set; }

    }
}
