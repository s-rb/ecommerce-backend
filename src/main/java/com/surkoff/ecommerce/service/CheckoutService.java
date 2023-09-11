package com.surkoff.ecommerce.service;

import com.surkoff.ecommerce.dto.Purchase;
import com.surkoff.ecommerce.dto.PurchaseResponse;

public interface CheckoutService {

    PurchaseResponse placeOrder(Purchase purchase);
}
