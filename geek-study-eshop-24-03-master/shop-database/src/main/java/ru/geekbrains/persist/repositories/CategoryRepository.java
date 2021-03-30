package ru.geekbrains.persist.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.geekbrains.persist.model.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
}
