using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBlogApplication
{
    public partial class onlineblogUI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connection = WebConfigurationManager.ConnectionStrings["myConnection"].ConnectionString;
            SqlConnection cnn = new SqlConnection(connection);

            string query = "select * from ArticleInfo";
            SqlCommand command = new SqlCommand(query, cnn);

            cnn.Open();
            SqlDataReader reader = command.ExecuteReader();
           
                   

            while (reader.Read())
            {
                articleTitle.Text = Convert.ToString(reader["articletitle"]);

            }

            reader.Close();
            cnn.Close();

            /* cnn.Open();
            int RowAffected = command.ExecuteNonQuery();
            cnn.Close();
            return RowAffected > 0;*/


        }

        protected void articleGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}