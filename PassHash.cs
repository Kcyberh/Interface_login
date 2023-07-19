using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Security.Cryptography;

namespace Interface_login
{
    public class PassHash
    {
        public string Hashme(string data)
        {
            string salt = "@salt";
            string dataWithSalt = data + salt;

            SHA256 msha = SHA256.Create();
            byte[] hashfile = msha.ComputeHash(Encoding.Default.GetBytes(dataWithSalt));
            StringBuilder outval = new StringBuilder();
            for (int x = 0; x < hashfile.Length; x++)
            {
                outval.Append(hashfile[x].ToString("x2"));
            }
            return outval.ToString();
        }
    }
}