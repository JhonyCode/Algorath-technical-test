import { Route, Navigate, Routes } from "react-router-dom";
import Login from "./pages/Login";
import { NotFound } from "./pages/NotFound";
import { BrowserRouter } from "react-router-dom";
import { Users } from "./pages/Users";
import { UserDetails } from "./pages/UserDetails";
import Dashboard from "./pages/Dashboard";
import Register from "./pages/Register";
function App() {
  //We have here all routes used on this project.
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/users">
          <Route index element={<Users />} />
          <Route path=":id" element={<UserDetails />} />
        </Route>
        <Route path="/" element={<Login />} />
        <Route path="/register" element={<Register />} />
        <Route path="/dashboard" element={<Dashboard />} />
        <Route path="/404" element={<NotFound />} />
        <Route path="*" element={<Navigate to="404" replace />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
