package controller.product;

import model.beans.Product;
import model.database.ProductOperation;
import model2.interfaces.ProductOperationInterface;
import util.ValidationCheck;

public class AddProductController {
    
    ProductOperationInterface productOperation;

    public static final int PRODUCT_EXIST = 1;
    public static final int PRODUCT_ADDED = 2;
    public static final int INVALID_NAME = 3;

    public AddProductController() {
        productOperation = new ProductOperation();
    }

    public int addProduct(Product product)
    {
        int added;
        ValidationCheck validationCheck = new ValidationCheck();

           boolean exist = productOperation.getProductInfo(product.getSku()) != null;
            if(!exist){

                productOperation.addNewProduct(product);
                added=PRODUCT_ADDED;
            }
            else
            {
                added = PRODUCT_EXIST;
            }

       return added;
    }
    
    
    
}
