export const signup = (userInfo) => {
  return $.ajax({
    url: '/api/users',
    method: 'POST',
    data: userInfo
  });
};

export const login = (userInfo) => {
  return $.ajax({
    url: '/api/session',
    method: 'POST',
    data: userInfo
  });
};

export const logout = () => {
  return $.ajax({
    url: '/api/session',
    method: 'DELETE',
  });
};
