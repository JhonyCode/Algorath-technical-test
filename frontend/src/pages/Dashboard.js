import { Link } from "react-router-dom";
import { AuthContext } from "../components/AuthContext";
import { useContext } from "react";
function Dashboard() {
  const { token, setToken } = useContext(AuthContext);
  //this is a function to logout after you have logged in.
  const logout = () => {
    localStorage.clear();
    window.location.href = "/";
  };
  //if you dont are logged, you will see this message.
  if (!token) return <div className="pages"><div><Link to="/">Please, login first. </Link></div>
  </div>
  //Render dashboard.
    return (
      <div>
        <div className="pages">Wecome to your dashboard</div>
        <div className="pages">
          <Link onClick={() => logout()} to="/">
            Exit
          </Link>
        </div>
        <div className="pages">
          <Link to="/users">See Users</Link>
        </div>
        <div className="backgroundvideo">
          <video autoPlay="yes" muted loop preload="yes">
            <source src="./video.mp4" type="video/mp4" />
          </video>
        </div>
      </div>
    );
}

export default Dashboard;
