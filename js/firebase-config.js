// Firebase Configuration
// Replace with your Firebase project config
const firebaseConfig = {
    apiKey: "AIzaSyAwKByVneNPdGOITz6l9B8XcaE9ZYIXUzA",
    authDomain: "flare-791af.firebaseapp.com",
    projectId: "flare-791af",
    storageBucket: "flare-791af.firebasestorage.app",
    messagingSenderId: "151005277793",
    appId: "1:151005277793:web:c06ec69592c879bd620420"
  };
  
  // Initialize Firebase
  firebase.initializeApp(firebaseConfig);
  
  // Initialize Firebase services
  const auth = firebase.auth();
  const db = firebase.firestore();
  
  // Check authentication state
  auth.onAuthStateChanged(user => {
    // For admin pages, redirect if not logged in
    if (window.location.pathname.includes('/admin/dashboard.html') && !user) {
      window.location.href = '/admin/login.html';
    }
    
    // For login page, redirect if already logged in
    if (window.location.pathname.includes('/admin/login.html') && user) {
      window.location.href = '/admin/dashboard.html';
    }
  });