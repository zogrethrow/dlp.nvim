package tree_sitter_dlp_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_dlp "github.com/zogrethrow/dlp.nvim/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_dlp.Language())
	if language == nil {
		t.Errorf("Error loading Dolphin grammar")
	}
}
