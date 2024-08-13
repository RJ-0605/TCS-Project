# TCS Database Architecture

## Overview

The TCS database is designed to handle customer information, orders, and product management.

## Tables

- `customers`: Stores customer information.
- `orders`: Tracks customer orders and associated products.
- `products`: Manages product details and inventory.

## Relationships

- Each order is linked to a customer and a product.
- Products have many-to-many relationships with orders.
