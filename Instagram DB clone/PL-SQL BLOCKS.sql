--Create a PL/SQL block to display all usernames:
DECLARE
  v_username users.username%TYPE;
BEGIN
  FOR rec IN (SELECT username FROM users) LOOP
    v_username := rec.username;
    DBMS_OUTPUT.PUT_LINE('Username: ' || v_username);
  END LOOP;
END;


--Create a PL/SQL block to insert a new user:
DECLARE
  v_username VARCHAR(255) := 'NewUser';
  v_created_at TIMESTAMP := SYSTIMESTAMP;
BEGIN
  INSERT INTO users (username, created_at)
  VALUES (v_username, v_created_at);
  DBMS_OUTPUT.PUT_LINE('New user inserted successfully.');
END;



-- Create a PL/SQL block to update the comment count for a specific photo:
DECLARE
  v_photo_id INT := 1; -- Update the comment count for photo with id 1
  v_comment_count INT;
BEGIN
  SELECT COUNT(*) INTO v_comment_count
  FROM comments
  WHERE photo_id = v_photo_id;
  
  UPDATE photos
  SET comment_count = v_comment_count
  WHERE id = v_photo_id;
  
  DBMS_OUTPUT.PUT_LINE('Comment count updated for photo ' || v_photo_id || ': ' || v_comment_count);
END;


