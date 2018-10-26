class Auth {
    static authenticateToken(token) {
        sessionStorage.getItem('token', token);
    }

    static isUserAuthenticated() {
        return sessionStorage.getItem('token') !== null;
    }

    static deauthenticateUser() {
        sessionStorage.removeItem('token');
    }

    static getToken() {
        return sessionStorage.getItem('token');
    }
}

export default Auth;