
CREATE TABLE inbox_messages (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id),
    platform VARCHAR(50) CHECK (platform IN ('LinkedIn', 'X', 'Instagram')),
    message_type VARCHAR(50) CHECK (message_type IN ('DM', 'comment', 'mention')),
    sender_name VARCHAR(255),
    content TEXT,
    received_at TIMESTAMP,
    status VARCHAR(50) CHECK (status IN ('unread', 'read', 'replied')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
