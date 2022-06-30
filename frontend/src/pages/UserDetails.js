import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import { Link } from "react-router-dom";
import "../imagenusuario.css";
//Userdetails function, here you wil get each information
//about each user, Username and Relations with.
export function UserDetails() {
  const { id } = useParams();
  const [user, setUser] = useState();
//Petition to server.
  useEffect(() => {
    fetch(`http://127.0.0.1:8080/user/${id}`)
      .then((res) => res.json())
      .then((data) => setUser(data.result));
  }, [id]);

  return (
    //Userdetail
    <div>
      {user ? (
        <div className="username" key={user.id}>
          <p>Username: {user.username}</p>
          <p>Relations with: {user.sonrelation}</p>
          <div><Link to="/users">Go back</Link></div>
        </div>
      ) : (
        <div>Loading...</div>
      )}
    </div>
  );
}
