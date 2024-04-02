using System.Runtime.InteropServices;

namespace LockWorkstation;

internal class Program
{
    static void Main(string[] args)
    {
        LockWorkStation();
    }

    [DllImport("user32.dll")]
    public static extern void LockWorkStation();
}
