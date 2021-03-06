package model2.doa;

import model2.interfaces.DaoInterface;
import model2.entity.ProductEntity;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import java.util.List;

public class ProductDao implements DaoInterface<ProductEntity> {

    private static ProductDao instance;
    private volatile EntityManager entityManager;
    public synchronized static ProductDao getInstance()
    {
        if (instance == null)
            instance = new ProductDao();
        return instance;
    }
    private ProductDao()
    {
        entityManager = DaoSessionProvider.getInstance().getSession();
    }

    @Override
    public synchronized void insert(ProductEntity entity) {
        entityManager.getTransaction().begin();
        entityManager.persist(entity);
        entityManager.getTransaction().commit();
    }

    @Override
    public synchronized void update(ProductEntity entity) {
        entityManager.getTransaction().begin();
        entityManager.merge(entity);
        entityManager.getTransaction().commit();
    }

    @Override
    public synchronized List<ProductEntity> select(String queryString) {
        Query query = entityManager.createQuery(queryString);
        return query.getResultList();
    }

    public synchronized List<ProductEntity> select(String queryString , int index) {
        int start = index * 5;
        int end = start + 5;
        Query query = entityManager.createQuery(queryString);
        query.setFirstResult(start);
        query.setMaxResults(end);
        return query.getResultList();
    }

    @Override
    public synchronized void delete(ProductEntity entity) {
        entityManager.getTransaction().begin();
        entityManager.remove(entity);
        entityManager.getTransaction().commit();
    }

    @Override
    public synchronized List<ProductEntity> findAll() {
        return null;
    }

    @Override
    public synchronized ProductEntity getEntityByID(int id) {
        return entityManager.find(ProductEntity.class , id);

    }

}
