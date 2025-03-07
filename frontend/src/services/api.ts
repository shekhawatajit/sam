import axios from 'axios';

const API_URL = 'http://localhost:5000/welcome'; // Update with your backend API URL

export const fetchWelcomeMessage = async () => {
    try {
        const response = await axios.get(API_URL);
        return response.data.message;
    } catch (error) {
        console.error('Error fetching welcome message:', error);
        throw error;
    }
};