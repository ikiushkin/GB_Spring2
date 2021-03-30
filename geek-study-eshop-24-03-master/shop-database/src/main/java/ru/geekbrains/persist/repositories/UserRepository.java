package ru.geekbrains.persist.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.geekbrains.persist.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
}
