#pragma checksum "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Account\Index.cshtml" "{8829d00f-11b8-4213-878b-770e8597ac16}" "5214e79e6d9ce5eafd9b447d975da303567da1342f539af6fc92181a938495e3"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Account_Index), @"mvc.1.0.view", @"/Views/Account/Index.cshtml")]
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
#line 1 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Account\Index.cshtml"
 using WebStore.Models

#line default
#line hidden
#nullable disable
    ;
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"Sha256", @"5214e79e6d9ce5eafd9b447d975da303567da1342f539af6fc92181a938495e3", @"/Views/Account/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"Sha256", @"0ca74d9d3d8f0fda11e57151523a5ee9557a88a1c5aba4211246523de85a92d1", @"/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Views_Account_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    #nullable disable
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("asp-action", "Create", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
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
#line 4 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Account\Index.cshtml"
  
    ViewData["Title"] = "Index";

#line default
#line hidden
#nullable disable

            WriteLiteral("\r\n<h1>Quản lý tài khoản</h1>\r\n\r\n<p>\r\n    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("a", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "5214e79e6d9ce5eafd9b447d975da303567da1342f539af6fc92181a938495e33814", async() => {
                WriteLiteral("Create New");
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
            WriteLiteral(@"
</p>
<table class=""table"">
    <thead>
        <tr>
            <th>
                UserName
            </th>
            <th>
                Passwork
            </th>
            <th>
                FullName
            </th>
            <th>
                Age
            </th>
            <th>
                Gender
            </th>
            <th>
                Address
            </th>
            <th>
                Email
            </th>
            <th>
                Phone
            </th>
            <th>
                Authority
            </th>
            <th></th>
        </tr>
    </thead>
    <tbody>
");
#nullable restore
#line 47 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Account\Index.cshtml"
         foreach (var item in Model.account)
        {

#line default
#line hidden
#nullable disable

            WriteLiteral("            <tr>\r\n                <td>\r\n                    ");
            Write(
#nullable restore
#line 51 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Account\Index.cshtml"
                     item.UserName

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n                </td>\r\n                <td>\r\n                    ");
            Write(
#nullable restore
#line 54 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Account\Index.cshtml"
                     item.Passwork

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n                </td>\r\n                <td>\r\n                    ");
            Write(
#nullable restore
#line 57 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Account\Index.cshtml"
                     item.FullName

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n                </td>\r\n                <td>\r\n                    ");
            Write(
#nullable restore
#line 60 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Account\Index.cshtml"
                     item.Age

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n                </td>\r\n                <td>\r\n                    ");
            Write(
#nullable restore
#line 63 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Account\Index.cshtml"
                     item.Gender

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n                </td>\r\n                <td>\r\n                    ");
            Write(
#nullable restore
#line 66 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Account\Index.cshtml"
                     item.Address

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n                </td>\r\n                <td>\r\n                    ");
            Write(
#nullable restore
#line 69 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Account\Index.cshtml"
                     item.Email

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n                </td>\r\n                <td>\r\n                    ");
            Write(
#nullable restore
#line 72 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Account\Index.cshtml"
                     item.Phone

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n                </td>\r\n                <td>\r\n                    ");
            Write(
#nullable restore
#line 75 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Account\Index.cshtml"
                     item.Authority

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n                </td>\r\n                <td>\r\n                    ");
            Write(
#nullable restore
#line 78 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Account\Index.cshtml"
                     Html.ActionLink("Edit", "Edit", new { /* id=item.PrimaryKey */ })

#line default
#line hidden
#nullable disable
            );
            WriteLiteral(" |\r\n                    ");
            Write(
#nullable restore
#line 79 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Account\Index.cshtml"
                     Html.ActionLink("Details", "Details", new { /* id=item.PrimaryKey */ })

#line default
#line hidden
#nullable disable
            );
            WriteLiteral(" |\r\n                    ");
            Write(
#nullable restore
#line 80 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Account\Index.cshtml"
                     Html.ActionLink("Delete", "Delete", new { /* id=item.PrimaryKey */ })

#line default
#line hidden
#nullable disable
            );
            WriteLiteral("\r\n                </td>\r\n            </tr>\r\n");
#nullable restore
#line 83 "D:\HK1-Năm 5\NET\Project\BookStore\WebStore\WebStore\Views\Account\Index.cshtml"
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
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591