package ru.geekbrains.persist.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.geekbrains.persist.model.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
}
