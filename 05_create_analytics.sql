
CREATE TABLE analytics (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id),
    platform VARCHAR(50) CHECK (platform IN ('LinkedIn', 'X', 'Instagram')),
    post_id UUID REFERENCES posts(id),
    impressions INTEGER,
    engagement INTEGER,
    follower_count INTEGER,
    captured_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
