/**
 * data.js - Mock Grocery Products Data
 */

const products = [
    // Fruits
    { id: 1, name: "Organic Bananas", category: "Fruits", price: 2.99, oldPrice: 3.50, discount: 10, image: "https://images.unsplash.com/photo-1603833665858-e61d17a86224?w=500&q=80", rating: 4.8 },
    { id: 2, name: "Fresh Pineapple", category: "Fruits", price: 4.99, image: "https://images.unsplash.com/photo-1550258987-190a2d41a8ba?w=500&q=80", rating: 4.7 },
    { id: 3, name: "Red Apples", category: "Fruits", price: 3.49, image: "assets/images/Red Apples.png", rating: 4.9 },
    { id: 4, name: "Green Grapes", category: "Fruits", price: 5.99, image: "assets/images/Green Grapes.png", rating: 4.6 },
    { id: 5, name: "Fresh Mangoes", category: "Fruits", price: 2.49, image: "https://images.unsplash.com/photo-1553279768-865429fa0078?w=500&q=80", rating: 4.8 },
    { id: 6, name: "Juicy Oranges", category: "Fruits", price: 4.49, image: "https://images.unsplash.com/photo-1611080626919-7cf5a9dbab5b?w=500&q=80", rating: 4.7 },
    { id: 31, name: "Strawberries", category: "Fruits", price: 4.99, image: "https://images.unsplash.com/photo-1464965911861-746a04b4bca6?w=500&q=80", rating: 4.9 },
    { id: 32, name: "Blueberries", category: "Fruits", price: 5.99, image: "assets/images/Blueberries.png", rating: 4.8 },
    
    // Vegetables
    { id: 7, name: "Organic Carrots", category: "Vegetables", price: 1.99, image: "assets/images/Organic Carrots.png", rating: 4.8 },
    { id: 8, name: "Fresh Tomatoes", category: "Vegetables", price: 3.49, image: "https://images.unsplash.com/photo-1592924357228-91a4daadcfea?w=500&q=80", rating: 4.5 },
    { id: 9, name: "Hass Avocado", category: "Vegetables", price: 2.49, image: "https://images.unsplash.com/photo-1523049673857-eb18f1d7b578?w=500&q=80", rating: 4.9 },
    { id: 10, name: "Fresh Broccoli", category: "Vegetables", price: 2.99, image: "https://images.unsplash.com/photo-1459411621453-7b03977f4bfc?w=500&q=80", rating: 4.7 },
    { id: 11, name: "Organic Spinach", category: "Vegetables", price: 3.99, image: "https://images.unsplash.com/photo-1576045057995-568f588f82fb?w=500&q=80", rating: 4.6 },
    { id: 12, name: "Red Onions", category: "Vegetables", price: 1.49, image: "https://images.unsplash.com/photo-1618512496248-a07fe83aa8cb?w=500&q=80", rating: 4.8 },
    { id: 33, name: "Bell Peppers", category: "Vegetables", price: 2.49, image: "assets/images/Bell Peppers.png", rating: 4.7 },
    { id: 34, name: "Cucumbers", category: "Vegetables", price: 1.29, image: "https://images.unsplash.com/photo-1604977042946-1eecc30f269e?w=500&q=80", rating: 4.5 },
    
    // Dairy
    { id: 13, name: "Farm Fresh Eggs", category: "Dairy", price: 5.49, image: "https://images.unsplash.com/photo-1582722872445-44dc5f7e3c8f?w=500&q=80", rating: 4.9 },
    { id: 14, name: "Whole Milk 1L", category: "Dairy", price: 1.89, image: "https://images.unsplash.com/photo-1563636619-e9143da7973b?w=500&q=80", rating: 4.7 },
    { id: 15, name: "Greek Yogurt", category: "Dairy", price: 4.99, image: "https://images.unsplash.com/photo-1488477181946-6428a0291777?w=500&q=80", rating: 4.8 },
    { id: 16, name: "Cheddar Cheese", category: "Dairy", price: 6.99, image: "assets/images/Cheddar Cheese.png", rating: 4.7 },
    { id: 17, name: "Unsalted Butter", category: "Dairy", price: 3.49, image: "https://images.unsplash.com/photo-1589985270826-4b7bb135bc9d?w=500&q=80", rating: 4.6 },
    { id: 18, name: "Heavy Cream", category: "Dairy", price: 4.49, image: "assets/images/Heavy Cream.png", rating: 4.8 },
    { id: 35, name: "Mozzarella Cheese", category: "Dairy", price: 5.49, image: "assets/images/Mozzarella Cheese.png", rating: 4.8 },
    { id: 36, name: "Sour Cream", category: "Dairy", price: 2.99, image: "assets/images/Sour Cream.png", rating: 4.6 },
    
    // Bakery
    { id: 19, name: "Whole Wheat Bread", category: "Bakery", price: 3.99, image: "https://images.unsplash.com/photo-1509440159596-0249088772ff?w=500&q=80", rating: 4.8 },
    { id: 20, name: "French Croissants", category: "Bakery", price: 5.99, image: "assets/images/French Croissants.png", rating: 4.9 },
    { id: 21, name: "Blueberry Muffins", category: "Bakery", price: 4.99, image: "https://images.unsplash.com/photo-1607958996333-41aef7caefaa?w=500&q=80", rating: 4.7 },
    { id: 22, name: "Plain Bagels", category: "Bakery", price: 3.49, image: "assets/images/Plain Bagels.png", rating: 4.6 },
    { id: 23, name: "Chocolate Cookies", category: "Bakery", price: 4.49, image: "https://images.unsplash.com/photo-1499636136210-6f4ee915583e?w=500&q=80", rating: 4.8 },
    { id: 24, name: "Sourdough Loaf", category: "Bakery", price: 5.49, image: "assets/images/Sourdough Loaf.png", rating: 4.9 },
    { id: 37, name: "Cinnamon Rolls", category: "Bakery", price: 4.99, image: "assets/images/Cinnamon Rolls.png", rating: 4.9 },
    { id: 38, name: "French Baguette", category: "Bakery", price: 2.99, image: "https://images.unsplash.com/photo-1586444248902-2f64eddc13df?w=500&q=80", rating: 4.7 },
    
    // Meat
    { id: 25, name: "Premium Beef Cut", category: "Meat", price: 14.99, image: "assets/images/Premium Beef Cut.png", rating: 4.9 },
    { id: 26, name: "Chicken Breast", category: "Meat", price: 9.99, image: "https://images.unsplash.com/photo-1604503468506-a8da13d82791?w=500&q=80", rating: 4.7 },
    { id: 27, name: "Pork Chops", category: "Meat", price: 11.99, image: "https://images.unsplash.com/photo-1432139555190-58524dae6a55?w=500&q=80", rating: 4.6 },
    { id: 28, name: "Lamb Chops", category: "Meat", price: 18.99, image: "assets/images/Lamb Chops.png", rating: 4.8 },
    { id: 29, name: "Smoked Bacon", category: "Meat", price: 7.99, image: "assets/images/Smoked Bacon.png", rating: 4.9 },
    { id: 30, name: "Turkey Breast", category: "Meat", price: 10.99, image: "assets/images/Turkey Breast.png", rating: 4.7 },
    { id: 39, name: "Ground Beef", category: "Meat", price: 8.99, image: "assets/images/Ground Beef.png", rating: 4.8 },
    { id: 40, name: "Pork Sausages", category: "Meat", price: 6.99, image: "https://images.unsplash.com/photo-1585325701165-351af916e581?w=500&q=80", rating: 4.7 }
];

// Helper to expose data
window.groceryProducts = products;
