~~~
npm install react-router-dom
npm install react-router-dom@버전지정
~~~

<br>

**9.4.0 기준**

~~~ javascript
import {
    BrowserRouter as Router,
    Routes, // 5.x버전: Switch
    Route,
    Link
} from "react-router-dom";

import Home from "routes/Home";
import Detail from "routes/Detail";

export default function App() {
    return (
        <Router>
            <Routes>
                <Route path="/home" element={<Home />} />
                <Route pth="/home/detail/:id" element={<Detail />} />
            </Routes>
        </Router>
    )
};
~~~