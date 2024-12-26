package org.example.quanlysanpham.service;

import org.example.quanlysanpham.model.Product;
import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService {
    private static final List<Product> products = new ArrayList<>();

    static {
        products.add(new Product(1, "Laptop", 1200.0, "High-end laptop", "Apple"));
        products.add(new Product(2, "Smartphone", 800.0, "Flagship smartphone", "Samsung"));
        products.add(new Product(3, "Headphones", 200.0, "Noise-cancelling headphones", "Sony"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products);
    }

    @Override
    public void save(Product product) {
        products.add(product);
    }

    @Override
    public Product findById(int id) {
        return products.stream()
                .filter(product -> product.getId() == id)
                .findFirst()
                .orElse(null);
    }

    @Override
    public void update(int id, Product product) {
        Product existingProduct = findById(id);
        if (existingProduct != null) {
            existingProduct.setName(product.getName());
            existingProduct.setPrice(product.getPrice());
            existingProduct.setDescription(product.getDescription());
            existingProduct.setManufacturer(product.getManufacturer());
        }
    }

    @Override
    public void remove(int id) {
        products.removeIf(product -> product.getId() == id);
    }

    @Override
    public List<Product> searchByName(String name) {
        List<Product> result = new ArrayList<>();
        for (Product product : products) {
            if (product.getName().toLowerCase().contains(name.toLowerCase())) {
                result.add(product);
            }
        }
        return result;
    }
}
