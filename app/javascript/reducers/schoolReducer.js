import { SET_SCHOOL_TITLE } from '../constants/action_types';

const initState = {
  schoolTitle: 'No Data'
}

export default (state = initState, action) => {
  switch (action.type) {
    case SET_SCHOOL_TITLE:
      return {...state, schoolTitle: action.payload}
    default:
      return state;
  }
}