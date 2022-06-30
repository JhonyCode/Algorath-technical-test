import { useContext, useState } from "react";
import { useNavigate, Navigate } from "react-router-dom";
import { AuthContext } from "../components/AuthContext";
import { Link } from "react-router-dom";
import "../login.css";
import image from "../components/algorath.png";
//Login function, gets token and formValues and check it
//after, then you will be redirected to dashboard if all ok.
const Login = () => {
  const navigate = useNavigate();
  const { token, setToken } = useContext(AuthContext);
  const [formValues, setFormValues] = useState({ username: "", password: "" });
  const handleInputChange = (e) => {
    setFormValues((prev) => ({ ...prev, [e.target.name]: e.target.value }));
  };
// Petition to server to check all credentials from DB.
  const handleSubmit = (e) => {
    e.preventDefault();
    fetch("http://127.0.0.1:8080/api/login_check", {
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

  if (token) return <Navigate to="/dashboard" replace />;

  return (
    //Here we have the login form. 
    <>
      <div className="image">
        {" "}
        <img src={image} />
      </div>
      <h1>Algorath login</h1>
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
          <button type="submit"> Login</button>
        </form>
        <div className="register"><Link to="/Register">New Account</Link></div>
      </div>
    </>
  );
};
export default Login;
