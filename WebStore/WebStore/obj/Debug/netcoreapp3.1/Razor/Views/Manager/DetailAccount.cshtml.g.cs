#pragma checksum "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "7e716bf85a051fa038d2609dcd966fba7ec188829785ad1e3050f16415b3145f"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Manager_DetailAccount), @"mvc.1.0.view", @"/Views/Manager/DetailAccount.cshtml")]
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
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"Sha256", @"7e716bf85a051fa038d2609dcd966fba7ec188829785ad1e3050f16415b3145f", @"/Views/Manager/DetailAccount.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"Sha256", @"0ca74d9d3d8f0fda11e57151523a5ee9557a88a1c5aba4211246523de85a92d1", @"/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Views_Manager_DetailAccount : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<WebStore.Models.Account>
    #nullable disable
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "ManagerAccount", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
  
    ViewData["Title"] = "DetailAccount";
    Layout = "~/Views/Shared/_ManagerLayout.cshtml";

#line default
#line hidden
#nullable disable

            WriteLiteral("\r\n<h1>DetailAccount</h1>\r\n\r\n<div>\r\n    <h4>Account</h4>\r\n    <hr />\r\n    <div class=\"row\">\r\n        <div class = \"col-sm-2\">\r\n            ");
            Write(
#nullable restore
#line 15 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
             Html.DisplayNameFor(model => model.UserName)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n        </div>\r\n        <div class = \"col-sm-10\">\r\n            ");
            Write(
#nullable restore
#line 18 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
             Html.DisplayFor(model => model.UserName)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n        </div>\r\n        <div class = \"col-sm-2\">\r\n            ");
            Write(
#nullable restore
#line 21 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
             Html.DisplayNameFor(model => model.FullName)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n        </div>\r\n        <div class = \"col-sm-10\">\r\n            ");
            Write(
#nullable restore
#line 24 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
             Html.DisplayFor(model => model.FullName)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n        </div>\r\n        <div class = \"col-sm-2\">\r\n            ");
            Write(
#nullable restore
#line 27 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
             Html.DisplayNameFor(model => model.Age)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n        </div>\r\n        <div class = \"col-sm-10\">\r\n            ");
            Write(
#nullable restore
#line 30 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
             Html.DisplayFor(model => model.Age)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n        </div>\r\n        <div class = \"col-sm-2\">\r\n            ");
            Write(
#nullable restore
#line 33 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
             Html.DisplayNameFor(model => model.Gender)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n        </div>\r\n        <div class=\"col-sm-10\">\r\n");
#nullable restore
#line 36 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
             if (Model.Gender == 1)
            {

#line default
#line hidden
#nullable disable

            WriteLiteral("                ");
            WriteLiteral("Nam\r\n");
#nullable restore
#line 39 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
            }
            else
            {

#line default
#line hidden
#nullable disable

            WriteLiteral("                ");
            WriteLiteral("Nữ\r\n");
#nullable restore
#line 43 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
            }

#line default
#line hidden
#nullable disable

            WriteLiteral("        </div>\r\n        <div class = \"col-sm-2\">\r\n            ");
            Write(
#nullable restore
#line 46 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
             Html.DisplayNameFor(model => model.Address)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n        </div>\r\n        <div class = \"col-sm-10\">\r\n            ");
            Write(
#nullable restore
#line 49 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
             Html.DisplayFor(model => model.Address)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n        </div>\r\n        <div class = \"col-sm-2\">\r\n            ");
            Write(
#nullable restore
#line 52 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
             Html.DisplayNameFor(model => model.Email)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n        </div>\r\n        <div class = \"col-sm-10\">\r\n            ");
            Write(
#nullable restore
#line 55 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
             Html.DisplayFor(model => model.Email)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n        </div>\r\n        <div class = \"col-sm-2\">\r\n            ");
            Write(
#nullable restore
#line 58 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
             Html.DisplayNameFor(model => model.Phone)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n        </div>\r\n        <div class = \"col-sm-10\">\r\n            ");
            Write(
#nullable restore
#line 61 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
             Html.DisplayFor(model => model.Phone)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n        </div>\r\n        <div class = \"col-sm-2\">\r\n            ");
            Write(
#nullable restore
#line 64 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
             Html.DisplayNameFor(model => model.Authority)

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n        </div>\r\n        <div class=\"col-sm-10\">\r\n");
#nullable restore
#line 67 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
             if (Model.Authority == 1)
            {

#line default
#line hidden
#nullable disable

            WriteLiteral("                ");
            WriteLiteral("Admin\r\n");
#nullable restore
#line 70 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
            }
            else if (Model.Authority == 2)
            {

#line default
#line hidden
#nullable disable

            WriteLiteral("                ");
            WriteLiteral("SuperAdmin\r\n");
#nullable restore
#line 74 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
            }
            else if(Model.Authority == 0)
            {

#line default
#line hidden
#nullable disable

            WriteLiteral("                ");
            WriteLiteral("Customer\r\n");
#nullable restore
#line 78 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
            }

#line default
#line hidden
#nullable disable

            WriteLiteral("        </div>\r\n    </div>\r\n</div>\r\n<div>\r\n    ");
            Write(
#nullable restore
#line 83 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Manager\DetailAccount.cshtml"
     Html.ActionLink("Edit", "EditAccount", new { id = Model.UserName })

#line default
#line hidden
#nullable disable
            );
            WriteLiteral(" |\r\n    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "7e716bf85a051fa038d2609dcd966fba7ec188829785ad1e3050f16415b3145f11596", async() => {
                WriteLiteral("Back to List");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.AnchorTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_AnchorTagHelper.Action = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral("\r\n</div>\r\n");
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<WebStore.Models.Account> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591