#pragma checksum "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\ManagerAccount.cshtml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "6e41b5d34ce4f76bfd9b7e489ce3e429b98055487230b7761986428cc579d620"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Manager_ManagerAccount), @"mvc.1.0.view", @"/Views/Manager/ManagerAccount.cshtml")]
namespace AspNetCore
{
    #line default
    using global::System;
    using global::System.Collections.Generic;
    using global::System.Linq;
    using global::System.Threading.Tasks;
    using global::Microsoft.AspNetCore.Mvc;
    using global::Microsoft.AspNetCore.Mvc.Rendering;
    using global::Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\_ViewImports.cshtml"
using WebStore

#nullable disable
    ;
#nullable restore
#line 2 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\_ViewImports.cshtml"
using WebStore.Models

#line default
#line hidden
#nullable disable
    ;
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"Sha256", @"6e41b5d34ce4f76bfd9b7e489ce3e429b98055487230b7761986428cc579d620", @"/Views/Manager/ManagerAccount.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"Sha256", @"0ca74d9d3d8f0fda11e57151523a5ee9557a88a1c5aba4211246523de85a92d1", @"/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Views_Manager_ManagerAccount : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<WebStore.Models.Account>>
    #nullable disable
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\ManagerAccount.cshtml"
  
    ViewData["Title"] = "ManagerAccount";
    Layout = "~/Views/Shared/_ManagerLayout.cshtml";

#line default
#line hidden
#nullable disable

            WriteLiteral("\r\n<h1>ManagerAccount</h1>\r\n<table class=\"table\">\r\n    <thead>\r\n        <tr>\r\n            <th>\r\n                ");
            Write(
#nullable restore
#line 13 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\ManagerAccount.cshtml"
                 Html.DisplayNameFor(model => model.UserName)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n            </th>\r\n            <th>\r\n                ");
            Write(
#nullable restore
#line 16 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\ManagerAccount.cshtml"
                 Html.DisplayNameFor(model => model.FullName)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n            </th>\r\n            <th>\r\n                ");
            Write(
#nullable restore
#line 19 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\ManagerAccount.cshtml"
                 Html.DisplayNameFor(model => model.Email)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n            </th>\r\n            <th>\r\n                ");
            Write(
#nullable restore
#line 22 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\ManagerAccount.cshtml"
                 Html.DisplayNameFor(model => model.Authority)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n            </th>\r\n            <th></th>\r\n        </tr>\r\n    </thead>\r\n    <tbody>\r\n");
#nullable restore
#line 28 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\ManagerAccount.cshtml"
 foreach (var item in Model) {

#line default
#line hidden
#nullable disable

            WriteLiteral("        <tr>\r\n            <td>\r\n                ");
            Write(
#nullable restore
#line 31 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\ManagerAccount.cshtml"
                 Html.DisplayFor(modelItem => item.UserName)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n            </td>\r\n            <td>\r\n                ");
            Write(
#nullable restore
#line 34 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\ManagerAccount.cshtml"
                 Html.DisplayFor(modelItem => item.FullName)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n            </td>\r\n            <td>\r\n                ");
            Write(
#nullable restore
#line 37 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\ManagerAccount.cshtml"
                 Html.DisplayFor(modelItem => item.Email)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n            </td>\r\n            <td>\r\n                ");
            Write(
#nullable restore
#line 40 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\ManagerAccount.cshtml"
                 Html.DisplayFor(modelItem => item.Authority)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n            </td>\r\n            <td>\r\n                ");
            Write(
#nullable restore
#line 43 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\ManagerAccount.cshtml"
                 Html.ActionLink("Edit", "EditAccount", new { id = item.UserName })

#line default
#line hidden
#nullable disable
            );
            WriteLiteral(" |\r\n                ");
            Write(
#nullable restore
#line 44 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\ManagerAccount.cshtml"
                 Html.ActionLink("Details", "DetailAccount", new { id = item.UserName })

#line default
#line hidden
#nullable disable
            );
            WriteLiteral(" |\r\n                ");
            Write(
#nullable restore
#line 45 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\ManagerAccount.cshtml"
                 Html.ActionLink("Delete", "DeleteAccount", new { id = item.UserName })

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n            </td>\r\n        </tr>\r\n");
#nullable restore
#line 48 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\ManagerAccount.cshtml"
}

#line default
#line hidden
#nullable disable

            WriteLiteral("    </tbody>\r\n</table>\r\n");
        }
        #pragma warning restore 1998
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<WebStore.Models.Account>> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591