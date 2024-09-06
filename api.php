<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *'); // For CORS

require 'db.php'; // Include your database connection file

$action = isset($_GET['action']) ? $_GET['action'] : '';

switch ($action) {
    case 'get_subjects':
        getSubjects();
        break;
    case 'get_questions':
        getQuestions();
        break;
    case 'submit_answers':
        submitAnswers();
        break;
    default:
        echo json_encode(['error' => 'Invalid action']);
        break;
}

function getSubjects() {
    global $conn;
    $query = "SELECT * FROM subjects";
    $result = mysqli_query($conn, $query);

    $subjects = [];
    while ($row = mysqli_fetch_assoc($result)) {
        $subjects[] = $row;
    }

    echo json_encode($subjects);
}

function getQuestions() {
    global $conn;
    $subject_id = isset($_GET['subject_id']) ? intval($_GET['subject_id']) : 0;

    //Fetch the questions for the selected subject and levels
    $query = "
        (SELECT id AS question_id, question_text 
         FROM questions 
         WHERE subject_id = ? AND level_id = 1 
         ORDER BY RAND() 
         LIMIT 4)
        UNION ALL
        (SELECT id AS question_id, question_text 
         FROM questions 
         WHERE subject_id = ? AND level_id = 2 
         ORDER BY RAND() 
         LIMIT 3)
        UNION ALL
        (SELECT id AS question_id, question_text 
         FROM questions 
         WHERE subject_id = ? AND level_id = 3 
         ORDER BY RAND() 
         LIMIT 3)
    ";

    // Prepare the query
    $stmt = $conn->prepare($query);
    if (!$stmt) {
        die("Error preparing the query: " . $conn->error);
    }

    // Bind parameters
    $stmt->bind_param("iii", $subject_id, $subject_id, $subject_id);

    // Execute the statement
    $stmt->execute();
    $questionsResult = $stmt->get_result();

    $questions = [];
    while ($row = $questionsResult->fetch_assoc()) {
        $questions[$row['question_id']] = [
            'question_text' => $row['question_text'],
            'answers' => []
        ];
    }

    // Get question IDs
    $questionIds = array_keys($questions);
    if (empty($questionIds)) {
        echo json_encode([]);
        return;
    }

    //Fetch answers for the retrieved questions
    $placeholders = implode(',', array_fill(0, count($questionIds), '?'));
    $answerQuery = "
        SELECT a.question_id, a.id AS answer_id, a.answer_text, a.is_correct
        FROM answers a
        WHERE a.question_id IN ($placeholders)
    ";

    $stmt = $conn->prepare($answerQuery);
    if (!$stmt) {
        die("Error preparing the query: " . $conn->error);
    }

    // Bind the question IDs
    $types = str_repeat('i', count($questionIds));
    $stmt->bind_param($types, ...$questionIds);

    // Execute the statement
    $stmt->execute();
    $answersResult = $stmt->get_result();

    // Populate answers into questions
    while ($row = $answersResult->fetch_assoc()) {
        $questions[$row['question_id']]['answers'][] = [
            'id' => $row['answer_id'],
            'answer_text' => $row['answer_text'],
            'is_correct'=>$row['is_correct'],
        ];
    }

    // Return the questions with answers
    echo json_encode(array_values($questions));
}



?>
