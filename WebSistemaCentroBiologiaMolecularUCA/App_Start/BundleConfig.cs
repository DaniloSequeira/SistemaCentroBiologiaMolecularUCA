using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;

namespace WebSistemaCentroBiologiaMolecularUCA
{
    public class BundleConfig
    {
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new StyleBundle("~/bundles/css")
                 .Include(
                 "~/Content/assets/css/normalize.css",
                 "~/Content/assets/css/bootstrap.min.css",
                 "~/Content/assets/css/font-awesome.min.css",
                 "~/Content/assets/css/themify-icons.css",
                 "~/Content/assets/css/flag-icon.min.css",
                 "~/Content/assets/css/cs-skin-elastic.css",
                 "~/Content/assets/css/bootstrap-select.less",
                 "~/Content/assets/scss/style.css",
                 "~/Content/assets/css/lib/vector-map/jqvmap.min.css",
                 "~/Content/assets/css/lib/datatable/dataTables.bootstrap.min.css",
                 "~/Content/jAlert-master/dist/jAlert.css",
                 "~/Content/assets/css/cs-skin-elastic.css"));
           
       
      }
    }
}