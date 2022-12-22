using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MusicPlayer.Variables
{
    class globalVariable
    {
        private static string select_playlist = "";

        public static string Select_playlist { get => select_playlist; set => select_playlist = value; }
    }
}
