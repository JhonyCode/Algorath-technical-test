import { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import "../imagenusuario.css";
import React, { useContext } from "react";
import { AuthContext } from "../components/AuthContext";
export function Users() {
  //This function is to clear the local storage so,
  // after you click it you will be redirected to Home.
  const logout = () => {
    localStorage.clear();
    window.location.href = "/";
  };
  //Here define users and token Const, then make 
  // Petition to server.
  const [users, setUsers] = useState([]);
  const { token } = useContext(AuthContext);
  useEffect(() => {
    fetch("http://127.0.0.1:8080/user")
      .then((res) => res.json())
      .then((data) => setUsers(data.result));
  }, []);
  if (!token) return <div className="pages"><div><Link to="/">Login here first</Link></div></div>;
  return (
    //Users list.
    <div className="users">
      {users.map((user) => {
        return (
          <ul key={user.id}>
            <div>Username: {user.username}</div>
            <img src={`../images/${user.avatar}`} />
            <div>
              <Link to={`/users/${user.id}`}>See detail</Link>
            </div>
          </ul>
        );
      })}
      <div className="pages">
        <Link onClick={() => logout()} to="/">
          Exit
        </Link>
      </div>
    </div>
  );
}
