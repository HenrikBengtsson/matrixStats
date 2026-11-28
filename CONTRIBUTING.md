
# Contributing to the 'matrixStats' package

This Git repository uses the
[Git Flow](https://nvie.com/posts/a-successful-git-branching-model/) branching
model 
(the [`git flow`](https://github.com/petervanderdoes/gitflow-avh)
extension is useful for this).
The [`develop`](https://github.com/HenrikBengtsson/matrixStats/tree/develop)
branch contains the latest
contributions and other code that will appear in the next release,
and the [`master`](https://github.com/HenrikBengtsson/matrixStats)
branch contains
the code of the latest release,
which is exactly what is
currently on [CRAN](https://cran.r-project.org/package=matrixStats).

Contributing to this package is easy. 
[Pull requests]((https://help.github.com/articles/using-pull-requests/)) can be 
used directly for fixing grammatical errors and typos in printouts
and documentation. For changes touching the source code or tests, we prefer you
first introduce your plan for the contribution and let us consider
it before opening a pull request.
If you are addressing an existing open issue, comment that you want to contribute
and state how you are planning to approach the problem. In case our intended
contribution is not covered by any open issue, open a new one where you state 
what your contribution is intended to achieve and how you want to implement it.
Please keep in mind that we also have access to AI agents, so contributions with
minimal human involvement are of little value to us. Careful use of AI assistance
is still OK as long as you state in the description how you intend to use it.

When you send your PR, make sure `develop` is the destination branch
on the [matrixStats repository](https://github.com/HenrikBengtsson/matrixStats).
Your PR should pass `R CMD check --as-cran`,
which will also be checked by
<a href="https://github.com/HenrikBengtsson/matrixStats/actions?query=workflow%3AR-CMD-check">GitHub Actions</a> 
when the PR is submitted.

We abide to the
[Code of Conduct](https://www.contributor-covenant.org/version/2/0/code_of_conduct/)
of Contributor Covenant.
