package com.phucanhduong;

import com.phucanhduong.config.security.UserDetailsImpl;
import com.phucanhduong.entity.authentication.Role;
import com.phucanhduong.entity.authentication.User;
import com.phucanhduong.repository.authentication.UserRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.Set;

@ExtendWith(SpringExtension.class)
@DataJpaTest
@AutoConfigureTestDatabase(replace = AutoConfigureTestDatabase.Replace.NONE)
public class UserRepositoryTests {

    @Autowired
    private UserRepository userRepository;

    @Test
    public void testGetUserByUsername() {
        User user = userRepository.findByUsername("dnucator0").orElseThrow(null);
        Set<Role> roles = user.getRoles();
        UserDetailsImpl test = UserDetailsImpl.build(user);
    }

}
