import React, { Component } from 'react';
import ReactDOM from 'react-dom';
import { Provider } from 'react-redux';
import adminStore from '../stores/adminStore';
import TopBar from '../containers/ToolBar';

class App extends React.Component {
  render(){
    return <TopBar />
  }
}


document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Provider store={adminStore}>
      <App />
    </Provider>,
    document.getElementById('app'),
  )
})
