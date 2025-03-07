import React, { useEffect, useState } from 'react';
import { fetchWelcomeMessage } from './services/api';

const App: React.FC = () => {
    const [welcomeMessage, setWelcomeMessage] = useState<string>('');

    useEffect(() => {
        const getWelcomeMessage = async () => {
            try {
                const message = await fetchWelcomeMessage();
                setWelcomeMessage(message);
            } catch (error) {
                console.error('Error fetching welcome message:', error);
            }
        };

        getWelcomeMessage();
    }, []);

    return (
        <div>
            <h1>{welcomeMessage}</h1>
        </div>
    );
};

export default App;