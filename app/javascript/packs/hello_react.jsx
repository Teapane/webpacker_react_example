import React, { useState } from 'react';
import ReactDOM from 'react-dom'
import PropTypes from 'prop-types'
import axios from 'axios'
import UpdateUsers from './update_user';

function App() {
  // state, setState
  const [users, setUsers] = useState(null);

  // fetch async
  const fetchUsers = async() => {
    const data = await axios({
      url: 'http://localhost:3006/graphql',
      method: 'post',
      data: {
        query: `
          {
            allUsers {
              id
              username
              createdAt
              updatedAt
            }
          }
          `
      }
    }).then((result) => {
      if(result.data) {
        setUsers(result.data.data.allUsers);
      }
    }).catch((e) => {
      console.error(e);
    })
  };

  const renderUserUpdate = () => {
    return (
      console.log('foo')
    )
  }

  const mainDiv = {
    display: 'flex',
    flexDirection: 'column',
    alignItems: 'center'
  };

  const divStyle = {
    display: 'flex',
    padding: '20px',
    color: 'blue',
  };

  const usersDiv = {
    background: 'green',
    display: 'flex'
  };

  const userSpan = {
    display: 'flex',
    flexDirection: 'column',
    padding: '18px',
    borderBottom: '8px solid white'
  };

  return (
    <div id="root" style={mainDiv}>
      <h1> LOOK AT ALL THE USERS </h1>
      <div style={divStyle}>
        <button onClick={fetchUsers}>GET USERS</button>
      </div>
        <div>
          {users &&
              users.map((x, index) => {
                return (
                  <div style={usersDiv} key={index}>
                    <span style={userSpan}>
                      <p>
                        {`ID: ${x.id}`}
                      </p>
                      <button onClick={renderUserUpdate()}>
                        {`UserName: ${x.username}`}
                      </button>
                      <p>
                        {`Created: ${x.createdAt}`}
                      </p>
                      <p>
                        {`Updated: ${x.updatedAt}`}
                      </p>
                    </span>
                  </div>
                );
              }
            )
          };
      </div>
    </div>
  );
};

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <App />,
    document.body.appendChild(document.createElement('div')),
  );
});
