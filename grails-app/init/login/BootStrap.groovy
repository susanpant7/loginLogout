package login

import com.Login.Role
import com.Login.User
import com.Login.UserRole

class BootStrap {

    def init = { servletContext ->
        if (User.count==0)
        {
            def user_user = new User()
            user_user.username="user"
            user_user.password="user"
            user_user.save()

            def user_admin = new User()
            user_admin.username="admin"
            user_admin.password="admin"
            user_admin.save()

            def role_user = new Role()
            role_user.authority="ROLE_USER"
            role_user.save()

            def role_admin = new Role()
            role_admin.authority="ROLE_ADMIN"
            role_admin.save()

            def user_role_user = new UserRole()
            user_role_user.user=user_user
            user_role_user.role=role_user
            user_role_user.save()

            def user_role_admin = new UserRole()
            user_role_admin.user=user_admin
            user_role_admin.role=role_admin
            user_role_admin.save()
        }
    }
    def destroy = {
    }
}
