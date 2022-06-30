import { useContext, useState } from "react";
import "../login.css";
import image from "../components/algorath.png";
import { useNavigate, Navigate } from "react-router-dom";
import { AuthContext } from "../components/AuthContext";
import { Link } from "react-router-dom";
//Register function, gets token and formValues and check it
//after, then you will be redirected to Home if all ok.
const Register = () => {
  const { token, setToken } = useContext(AuthContext);
  const navigate = useNavigate();
  const [formValues, setFormValues] = useState({ username: "", password: "" });
  const handleInputChange = (e) => {
    setFormValues((prev) => ({ ...prev, [e.target.name]: e.target.value }));
  };
//Petition to server.
  const handleSubmit = (e) => {
    e.preventDefault();
    fetch("http://127.0.0.1:8080/user/new", {
      method: "POST",
      body: JSON.stringify(formValues),
      headers: {
        "Content-Type": "application/json",
      },
    })
      .then((res) => res.json())
      .then((data) => {
        setToken(data.token);
        navigate("/", { replace: true });
      });
  };
//When you click Register, it doesn't do anything but
// If you go to DB you will se there's the new user, 
// didnt have time for more, sorry.
  return (
    <>
      <div className="image">
        {" "}
        <img src={image} />
      </div>
      <div>
          <div className="login">
            <Link to="/">Login</Link>
          </div>
        </div>
      <h1>Algorath register</h1>
      <div className="login">
        <form onSubmit={handleSubmit}>
          <label htmlFor="username">Username</label>
          <input
            id="username"
            name="username"
            type="username"
            onChange={handleInputChange}
            value={formValues.username}
          />
          <label htmlFor="password">Password</label>
          <input
            id="password"
            name="password"
            type="password"
            onChange={handleInputChange}
            values={formValues.password}
          />
          <button type="submit"> Register</button>
        </form>
      </div>
    </>
  );
};
export default Register;
