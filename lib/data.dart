import 'package:my_gsl_app/classes.dart';

final List<Sign> familySigns = [
  Sign("Aunt", "images/gifs/family/aunt.gif"),
  Sign("Brother", "images/gifs/family/brother.gif"),
  Sign("Parents", "images/gifs/family/parents.gif"),
  Sign("Cousin", "images/gifs/family/cousin.gif"),
  Sign("Daughter", "images/gifs/family/daughter.gif"),
  Sign("Family", "images/gifs/family/family.gif"),
  Sign("Sister", "images/gifs/family/sister.gif"),
  Sign("Grandmother", "images/gifs/family/grandmother.gif"),
  Sign("Husband", "images/gifs/family/husband.gif"),
  Sign("Wife", "images/gifs/family/wife.gif")
];

final List<Sign> alphabetSigns = [
  Sign("A", "images/gifs/alphabets/A.gif"),
  Sign("B", "images/gifs/alphabets/B.gif"),
  Sign("C", "images/gifs/alphabets/C.gif"),
  Sign("D", "images/gifs/alphabets/D.gif"),
  Sign("E", "images/gifs/alphabets/E.gif"),
  Sign("F", "images/gifs/alphabets/F.gif"),
  Sign("G", "images/gifs/alphabets/G.gif"),
  Sign("H", "images/gifs/alphabets/H.gif"),
  Sign("I", "images/gifs/alphabets/I.gif"),
];

final List<Sign> numberSigns = [
  Sign("1", "images/gifs/numbers/1.gif"),
  Sign("2", "images/gifs/numbers/2.gif"),
  Sign("3", "images/gifs/numbers/3.gif"),
  Sign("4", "images/gifs/numbers/4.gif"),
  Sign("5", "images/gifs/numbers/5.gif"),
  Sign("6", "images/gifs/numbers/6.gif"),
  Sign("7", "images/gifs/numbers/7.gif"),
  Sign("8", "images/gifs/numbers/8.gif"),
  Sign("9", "images/gifs/numbers/9.gif"),
  Sign("10", "images/gifs/numbers/10.gif"),
];

final List<Sign> pronounSigns = [
  Sign("I", "images/gifs/pronouns/I.gif"),
  Sign("Me", "images/gifs/pronouns/me.gif"),
  Sign("Mine", "images/gifs/pronouns/mine.gif"),
  Sign("Myself", "images/gifs/pronouns/myself.gif"),
  Sign("Her", "images/gifs/pronouns/her.gif"),
  Sign("His", "images/gifs/pronouns/his.gif"),
  Sign("Every", "images/gifs/pronouns/every.gif"),
  Sign("Is", "images/gifs/pronouns/is.gif"),
  Sign("Am", "images/gifs/pronouns/am.gif"),
];

final List<Sign> gameSigns = [
  Sign("Accept", "images/gifs/games_activities/accept.gif"),
  Sign("Activity", "images/gifs/games_activities/activity.gif"),
  Sign("Congratulate", "images/gifs/games_activities/congratulate.gif"),
  Sign("Create", "images/gifs/games_activities/create.gif"),
  Sign("Walk", "images/gifs/games_activities/walk.gif"),
  Sign("Meet", "images/gifs/games_activities/meet.gif"),
  Sign("Stand", "images/gifs/games_activities/stand.gif"),
  Sign("Smile", "images/gifs/games_activities/smile.gif"),
  Sign("Design", "images/gifs/games_activities/design.gif"),
];

final List<Sign> relationshipSigns = [
  Sign("Relationship", "images/gifs/relationships/relationship.gif"),
  Sign("Marriage", "images/gifs/relationships/marriages.gif"),
  Sign("Engaged", "images/gifs/relationships/engaged.gif"),
  Sign("Friend", "images/gifs/relationships/friend.gif"),
  Sign("Boy", "images/gifs/relationships/boy.gif"),
  Sign("Girl", "images/gifs/relationships/girl.gif"),
  Sign("Child", "images/gifs/relationships/child.gif"),
  Sign("Children", "images/gifs/relationships/children.gif"),
  Sign("Man", "images/gifs/relationshik.gif"),
];
final Category familyCategory = Category("Family", familySigns);
final Category alphabetCategory = Category("Alphabet", alphabetSigns);
final Category numberCategory = Category("Numbers", numberSigns);
final Category pronounCategory = Category("Pronouns", pronounSigns);
final Category gameCategory = Category("Games & Activities", gameSigns);
final Category relationshipCategory =
    Category("Relationships", relationshipSigns);

final List<SignTopic> signTopics = [
  SignTopic('Alphabet', 'images/blocks.png',
      'A set containing the alphabets in GSL', 1.0, alphabetCategory),
  SignTopic('Numbers', 'images/number.png',
      'A set containing the numbers in GSL', 1.0, numberCategory),
  SignTopic('Pronouns', 'images/positive.png',
      'A set containing the pronouns in GSL', 2.0, pronounCategory),
  SignTopic('Family', 'images/home.png', 'A set about family in GSL', 2.0,
      familyCategory),
  SignTopic('Games', 'images/football.png', 'A set about games in GSL', 3.0,
      gameCategory),
  SignTopic('Relationships', 'images/hug.png',
      'A set about various relationships in GSL', 3.0, relationshipCategory),
  SignTopic('Food', 'images/vegetables.png', 'A set about family in GSL', 3.5,
      familyCategory),
  SignTopic('Weather', 'images/sun.png', 'A set about the weather in GSL', 3.5,
      familyCategory),
  SignTopic('Subjects', 'images/blackboard.png',
      'A set about subjects in school in GSL', 3.5, familyCategory),
];
