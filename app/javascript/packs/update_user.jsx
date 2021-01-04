import React, { useState } from 'react';
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import axios from 'axios'

function UpdateUsers() {
  // state, setState
  const [users, setUsers] = useState(null);

  return (
    <div id="update-users">
    </div>
  );
};

export default UpdateUsers;
