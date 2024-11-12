class EndPoints {
  //Auth
  static const login = "login";
  static const register = "register";
  static const logout = "auth/logout";
  static const profile = "auth/profile";
  static const updateProfile = "auth/update-profile";
  static const deleteProfile = "auth/delete-account";
  static const changePassword = "auth/change-password";

  //profile
  static const getProfile = "auth/profile";

  static const updateProfileImage = "auth/update-profile-image";

  static const getFav = "auth/favorites";

  //home
  static const home = "home";
  static const contactUs = "auth/contact-us";
  static const notification = "auth/notifications";

  //gallery
  static const product = "products";
  static const addToFav = "auth/product/add-to-favorite";
  static const sendRequest = "auth/product/store-request";
}
