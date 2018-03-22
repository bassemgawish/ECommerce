package model.interfaces;

import java.io.Serializable;
import java.util.List;


public interface DaoInterface<T> extends Serializable {

    public void persist(T entity);

    public void update(T entity);

    public T select(String id);

    public void delete(T entity);

    public List<T> findAll();

    public void deleteAll();

}