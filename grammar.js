module.exports = grammar({
  name: "dlp",

  rules: {
    source_file: ($) => repeat($._statement),

    _statement: ($) => choice($.if_statement, $.return_statement, $.comment),

    if_statement: ($) => seq("if", "(", $.boolean_literal, ")", $.block),

    block: ($) => seq("{", repeat($._statement), "}"),

    return_statement: ($) => seq("return", $.number_literal, ";"),

    boolean_literal: ($) => choice("true", "false"),
    number_literal: ($) => /\d+/,

    comment: ($) => token(seq("//", /.*/)),
  },
});
