// Should output:
//
// Foo	/Users/Robert/Documents/GitHub/Dotfiles/ctags/rsinv-test.js	/^export type Foo = {$/;"	e
// Thing	/Users/Robert/Documents/GitHub/Dotfiles/ctags/rsinv-test.js	/^export default class Thing {$/;"	e
// foo	/Users/Robert/Documents/GitHub/Dotfiles/ctags/rsinv-test.js	/^export function foo() {}$/;"	e
// num	/Users/Robert/Documents/GitHub/Dotfiles/ctags/rsinv-test.js	/^  @observable num: number;$/;"	o
// x	/Users/Robert/Documents/GitHub/Dotfiles/ctags/rsinv-test.js	/^export x;$/;"	e

export default class Thing {
  @observable num: number;
}

export type Foo = {
  y: number,
};

export function foo() {}

const x = 3;
export x;
