package app.repository;

import app.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User,Long> {

    @Query("SELECT p FROM User p JOIN FETCH p.roles WHERE p.username = (:username)")
    User findByUsername(@Param("username")String username);



    @Query("SELECT DISTINCT p FROM User p JOIN FETCH p.roles ORDER BY p.id")
    List<User> findAllAndFetchRolesEagerly();
}
