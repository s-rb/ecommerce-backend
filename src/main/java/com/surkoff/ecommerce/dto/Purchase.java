package com.surkoff.ecommerce.dto;

import com.surkoff.ecommerce.entity.Address;
import com.surkoff.ecommerce.entity.Customer;
import com.surkoff.ecommerce.entity.Order;
import com.surkoff.ecommerce.entity.OrderItem;
import lombok.Data;

import java.util.Set;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;
}
