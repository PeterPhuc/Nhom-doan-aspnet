# Overview

This project is a bookstore management website. This book selling website management system will provide users with an account to log in and log out to use this website. With a login account, the system will determine whether the person logging in is an employee or a manager. From there, the system will provide corresponding permissions for each login account. For customers, the website provides customers with customer-specific functions such as logging in, changing profile, shopping cart, searching for products, viewing placed orders, etc.


## Features
Product management
- Add, edit, delete products
- Product information management: product code, product name, product description, selling price, inventory,...
- Manage product categories
- Order management

Sales management
- Manage customer information: customer name, address, phone number,...
- Manage customer invoice history
- Calculate money, print invoices

Customer management: manage customer information

Account management:
- Super Admin: This is the main subject with the highest authority to use the software to manage all business activities of the store, including:
    + Manage goods: Add, edit, delete goods.
    + Sales management: Billing, order management, etc.
    + Employee management: Add, edit, delete, assign rights,...
- Regular Admin: This object also has the same rights as Super Admin, except for managing user accounts and other admins.
- Customer

## Tech Stack

**Client:** HTML, CSS, Javascript, Jquery, Bootstrap

**Server:** ASP.NET Core MVC

**Database:** Microsoft SQL Server


## Installation
Clone this project: 
```bash
  https://github.com/PeterPhuc/Nhom-doan-aspnet.git
```

Change to your ConnectionStrings:
```bash
  Data Source=[YOUR_SERVER_NAME];Initial Catalog=QLStore;Integrated Security=True
```

Run project:
```bash
  dotnet run
```

## Authors

| Leader          | Member         | Member         |
|-----------------|----------------|----------------|
|Nguyễn Thành Đạt      | Lê Hoàng Nhật Thảo   | Lê Trung Tín   | 

#### Contact email:
- [trungtin.le1505@gmail.com](mailto:trungtin.le1505@gmail.com)