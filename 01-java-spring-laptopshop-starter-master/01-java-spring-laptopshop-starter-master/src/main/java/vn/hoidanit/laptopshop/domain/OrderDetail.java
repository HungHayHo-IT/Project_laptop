package vn.hoidanit.laptopshop.domain;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "order_detail")
public class OrderDetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private long quantity;
    private double price;
    // many orderDetai -> to -> one order
    // order_id
    @ManyToOne
    @JoinColumn(name = "oder_id")
    private Order order;

    // many orderDetai ->to -> one product
    // product_id
    @ManyToOne
    @JoinColumn(name = "product_id")
    private Product product;
}
