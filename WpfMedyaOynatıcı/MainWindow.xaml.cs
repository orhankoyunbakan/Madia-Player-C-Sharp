using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Forms;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WpfMedyaOynatıcı
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

        private void Button_Click(object sender, RoutedEventArgs e)//play
        {
            mediaElement1.Play();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)//pause
        {
            mediaElement1.Pause();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)//stop
        {
            mediaElement1.Stop();
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)//openfile
        {
            System.Windows.Forms.OpenFileDialog ofd;
            ofd = new System.Windows.Forms.OpenFileDialog();
            ofd.AddExtension = true;
            ofd.DefaultExt = "*.*";
            ofd.Filter = "Media Files (*.*)|*.*";
            ofd.ShowDialog();

            try
            {
                mediaElement1.Source = new Uri(ofd.FileName);
                mediaElement1.Play();

            }
            catch (Exception)
            {
                new NullReferenceException("Error");
                
            }
            
            System.Windows.Threading.DispatcherTimer dispatcherTimer = new System.Windows.Threading.DispatcherTimer();
            dispatcherTimer.Tick += new EventHandler(timer_Tick);
            dispatcherTimer.Interval = new TimeSpan(0, 0, 1);
            dispatcherTimer.Start();
            

        }

        void timer_Tick(object sender,EventArgs e)
        {
            string saat_sifir="0",dakka_sifir="0",saniye_sifir="0";
            
            slider1.Value = mediaElement1.Position.TotalSeconds;
            int girdi=(int)slider1.Value;

            int saat = 0;
            int dakika = 0;


            saat = girdi / 3600;
            girdi = girdi - saat * 3600;

            dakika = girdi / 60;
            
            girdi = girdi - dakika * 60;
            if (saat >= 10)
                saat_sifir = "";
            if (dakika >= 10)
                dakka_sifir = "";
            if (girdi >= 10)
                saniye_sifir = "";


           label_time.Content=  saat_sifir+saat + ":" +dakka_sifir+ dakika + ":" +saniye_sifir+ girdi ;
        }
        
       

        private void slider2_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            mediaElement1.Volume = (double)slider2.Value;
        }

        private void mediaElement1_MediaOpened(object sender, RoutedEventArgs e)
        {
            if (mediaElement1.NaturalDuration.HasTimeSpan)
            {
                TimeSpan ts = TimeSpan.FromMilliseconds(mediaElement1.NaturalDuration.TimeSpan.TotalMilliseconds);
                slider1.Maximum = ts.TotalSeconds;



            }
        }

        private void slider1_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            TimeSpan ts = TimeSpan.FromSeconds(e.NewValue);
            mediaElement1.Position = ts;
        }

        private void ChangeMediaSpeedRatio(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            mediaElement1.SpeedRatio = (double)speedRatioSlider.Value;
        }



    }
}
