const imageWidth = 200;

const repeatCharacter = 2;

const reverseColor = true;

const letterSpacing = 0.2;

const fontSize = 3.0;

const levelChars = [
  " ",
  ".",
  ",",
  "'",
  '"',
  ";",
  "*",
  "/",
  "(",
  "{",
  "+",
  "=",
  "%",
  "&",
  "#",
  "@",
];

/// Length must be equals [levelChars]
///
/// White = 4294967295.
/// Black = 4278190080.
const levelColors = [
  4294000000,
  4293000000,
  4292000000,
  4291000000,
  4290000000,
  4289000000,
  4288000000,
  4287000000,
  4286000000,
  4285000000,
  4284000000,
  4283000000,
  4282000000,
  4281000000,
  4280000000,
  4279000000, // 4270000000
];

/// Length must be equals [levelChars]
///
/// White = 4294967295.
/// Black = 4278190080.
const levelColors2 = [
  4294967295, // 0xffffffff
  4293848814, // 0xffeeeeee
  4292730333, // 0xffdddddd
  4291611852, // 0xffcccccc
  4290493371, // 0xffbbbbbb
  4289374890, // 0xffaaaaaa
  4288256409, // 0xff999999
  4287137928, // 0xff888888
  4286019447, // 0xff777777
  4284900966, // 0xff666666
  4283782485, // 0xff555555
  4282664004, // 0xff444444
  4281545523, // 0xff333333
  4280427042, // 0xff222222
  4279308561, // 0xff111111
  4278190080, // 0xff000000
];
