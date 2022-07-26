const REGEXP = /[g|b]it[a-z]+/i;

const github = "https://github.com/Gabriel-Marino/";
const gitlab = "https://gitlab.com/Gabriel-Marino";
const bitbuc = "https://bitbucket.org/gabriel-marino/";
const sforge = "https://sourceforge.net/u/nknwnmarino/profile";

console.log("github: " + github.match(REGEXP));
console.log("gitlab: " + gitlab.match(REGEXP));
console.log("bitbuc: " + bitbuc.match(REGEXP));
