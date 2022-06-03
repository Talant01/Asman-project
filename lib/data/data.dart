import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/main.dart';
import 'package:my_app/widgets/category.dart';

const String snacksImageUrl =
    'https://images.unsplash.com/photo-1451218005305-c330255e8a4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHNuYWNrcyUyMGFuZCUyMGJpc2N1aXRzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60';
const String beverageImageUrl =
    'https://images.unsplash.com/photo-1612528443702-f6741f70a049?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGJldmVyYWdlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60';
const String personalCareImageUrl =
    'https://images.unsplash.com/photo-1596755389378-c31d21fd1273?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGVyc29uYWwlMjBjYXJlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60';
// TODO: Fetch products and feed into widgets
List<Product> products = [
  Product(
      name: "Shortbread Fingers",
      imageUrls: [
        'https://www.parknshop.com/medias/sys_master/front/cat/9419839471646.jpg'
      ],
      cost: 12.99,
      category: snacksCategory,
      productType: "Biscuits",
      sizes: ["9.5", "10", "8", "7"]),
  Product(
      name: "Shortbread Fingers",
      imageUrls: [
        'https://www.parknshop.com/medias/sys_master/front/cat/9419839471646.jpg'
      ],
      cost: 12.99,
      category: snacksCategory,
      productType: "Biscuits",
      sizes: ["9.5", "10", "8", "7"]),
  Product(
      name: "Shortbread Fingers",
      imageUrls: [
        'https://www.parknshop.com/medias/sys_master/front/cat/9419839471646.jpg'
      ],
      cost: 12.99,
      category: snacksCategory,
      productType: "Biscuits",
      sizes: ["9.5", "10", "8", "7"]),
  Product(
      name: "Shortbread Fingers",
      imageUrls: [
        'https://www.parknshop.com/medias/sys_master/front/cat/9419839471646.jpg'
      ],
      cost: 12.99,
      category: snacksCategory,
      productType: "Biscuits",
      sizes: ["9.5", "10", "8", "7"]),
  Product(
    name: "Dark Chocolate",
    imageUrls: [
      'https://www.parknshop.com/medias/sys_master/front/cat/9665111982110.jpg'
    ],
    cost: 39.99,
    category: snacksCategory,
    productType: "Chocolates",
    sizes: ["25.90", "24", "40", "30", "20"],
  ),
  Product(
    name: "Dark Chocolate",
    imageUrls: [
      'https://www.parknshop.com/medias/sys_master/front/cat/9665111982110.jpg'
    ],
    cost: 39.99,
    category: snacksCategory,
    productType: "Chocolates",
    sizes: ["25.90", "24", "40", "30", "20"],
  ),
  Product(
    name: "Dark Chocolate",
    imageUrls: [
      'https://www.parknshop.com/medias/sys_master/front/cat/9665111982110.jpg'
    ],
    cost: 39.99,
    category: snacksCategory,
    productType: "Chocolates",
    sizes: ["25.90", "24", "40", "30", "20"],
  ),
  Product(
    name: "Etnicians Potato",
    imageUrls: [
      'https://www.parknshop.com/medias/sys_master/front/cat/9843941900318.jpg'
    ],
    cost: 39.99,
    category: snacksCategory,
    productType: "Crisps",
    sizes: ["25.90", "24", "40", "30", "20"],
  ),
  Product(
    name: "Etnicians Potato",
    imageUrls: [
      'https://www.parknshop.com/medias/sys_master/front/cat/9843941900318.jpg'
    ],
    cost: 39.99,
    category: snacksCategory,
    productType: "Crisps",
    sizes: ["25.90", "24", "40", "30", "20"],
  ),
  Product(
    name: "Etnicians Potato",
    imageUrls: [
      'https://www.parknshop.com/medias/sys_master/front/cat/9843941900318.jpg'
    ],
    cost: 39.99,
    category: snacksCategory,
    productType: "Crisps",
    sizes: ["25.90", "24", "40", "30", "20"],
  ),
  Product(
    name: "Etnicians Potato",
    imageUrls: [
      'https://www.parknshop.com/medias/sys_master/front/cat/9843941900318.jpg'
    ],
    cost: 39.99,
    category: snacksCategory,
    productType: "Crisps",
    sizes: ["25.90", "24", "40", "30", "20"],
  ),
  Product(
    name: "Etnicians Potato",
    imageUrls: [
      'https://www.parknshop.com/medias/sys_master/front/cat/9843941900318.jpg'
    ],
    cost: 39.99,
    category: snacksCategory,
    productType: "Crisps",
    sizes: ["25.90", "24", "40", "30", "20"],
  ),
  Product(
    name: "Etnicians Potato",
    imageUrls: [
      'https://www.parknshop.com/medias/sys_master/front/cat/9843941900318.jpg'
    ],
    cost: 39.99,
    category: snacksCategory,
    productType: "Crisps",
    sizes: ["25.90", "24", "40", "30", "20"],
  ),
  Product(
    name: "Lemon tea 250ml",
    imageUrls: [
      'https://www.parknshop.com/medias/sys_master/front/cat/9201427316766.jpg'
    ],
    cost: 16.99,
    category: beveragesCategory,
    productType: "Beverages",
    sizes: ["15", "20", "18", "19", "21"],
  ),
  Product(
    name: "Lemon tea 250ml",
    imageUrls: [
      'https://www.parknshop.com/medias/sys_master/front/cat/9201427316766.jpg'
    ],
    cost: 16.99,
    category: beveragesCategory,
    productType: "Beverages",
    sizes: ["15", "20", "18", "19", "21"],
  ),
  Product(
    name: "Lemon tea 250ml",
    imageUrls: [
      'https://www.parknshop.com/medias/sys_master/front/cat/9201427316766.jpg'
    ],
    cost: 16.99,
    category: beveragesCategory,
    productType: "Beverages",
    sizes: ["15", "20", "18", "19", "21"],
  ),
  Product(
    name: "Lemon tea 250ml",
    imageUrls: [
      'https://www.parknshop.com/medias/sys_master/front/cat/9201427316766.jpg'
    ],
    cost: 16.99,
    category: beveragesCategory,
    productType: "Beverages",
    sizes: ["15", "20", "18", "19", "21"],
  ),
  Product(
    name: "Levi's 715 Bootcut Jeans",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/81QwSgeXHTL._AC_UX522_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/81qmkt1Be0L._AC_UY679_.jpg",
    ],
    cost: 34.99,
    category: beveragesCategory,
    productType: "jeans",
    sizes: ["XS", "S", "M", "L", "XL"],
  ),
  Product(
    name: "3-Pack - Squeaky Plush Dog Toy",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/712YaF31-3L._AC_SL1000_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/71K1NzmHCfL._AC_SL1000_.jpg",
    ],
    cost: 9.99,
    category: personalCareCategory,
    productType: "toys",
  ),
  Product(
    name: "Wobble Wag Giggle Ball",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/81XyqDXVwCL._AC_SX355_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/81Ye9KrP3pL._AC_SY355_.jpg",
    ],
    cost: 11.99,
    category: personalCareCategory,
    productType: "toys",
  ),
  Product(
    name: "Duck Hide Twists",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/51dS9c0xIdL._SX342_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/81z4lvRtc5L._SL1500_.jpg",
    ],
    cost: 8.99,
    category: personalCareCategory,
    productType: "treats",
  ),
  Product(
    name: "Zuke's Mini Training Treats",
    imageUrls: [
      "https://images-na.ssl-images-amazon.com/images/I/81LV2CHtGKL._AC_SY355_.jpg",
      "https://images-na.ssl-images-amazon.com/images/I/81K30Bs9C6L._AC_SY355_.jpg",
    ],
    cost: 10.99,
    category: personalCareCategory,
    productType: "treats",
  ),
];
