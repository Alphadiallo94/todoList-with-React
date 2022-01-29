import  firebase  from 'firebase/app';
import 'firebase/firestore';


const firebaseConfig = firebase.initializeApp({
    apiKey: "AIzaSyC6pUvam-2IAFsugvZrTJBQLHlmr_FJxoc",
    authDomain: "todoist-67635.firebaseapp.com",
    projectId: "todoist-67635",
    storageBucket: "todoist-67635.appspot.com",
    messagingSenderId: "40476872375",
    appId: "1:40476872375:web:9bcfabca597b694cf64732",
    //measurementId: "G-CDZF3M40XY"
})


export { firebaseConfig as firebase };


