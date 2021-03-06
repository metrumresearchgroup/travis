% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/github-meta.R
\name{github_info}
\alias{github_info}
\alias{github_repo}
\alias{uses_github}
\title{Github information}
\usage{
github_info(path = ".", gh_token = NULL)

github_repo(path = ".", info = github_info(path))

uses_github(path = ".")
}
\arguments{
\item{path}{\code{[string]}\cr
The path to a GitHub-enabled Git repository (or a subdirectory thereof).}

\item{gh_token}{\code{[Token2.0]}\cr
GitHub authentication token, by default obtained from \code{\link[=auth_github]{auth_github()}} with
empty scope.}

\item{info}{\code{[list]}\cr
GitHub information for the repository, by default obtained through
\code{\link[=github_info]{github_info()}}.}
}
\description{
Retrieves metadata about a Git repository from GitHub.

\code{github_info()} returns a list as obtained from the GET "/repos/:repo" API.

\code{github_repo()} returns the true repository name as string.

\code{uses_github()} returns a flag that indicates if this repo is GitHub-enabled.
If \code{TRUE}, the "info" and "repo" attributes contain the results of the
corresponding functions. If \code{FALSE}, the "reason" attribute explains what
happened during detection of GitHub status.
}
\seealso{
Other GitHub functions: \code{\link{github_add_key}},
  \code{\link{github_create_pat}},
  \code{\link{github_create_repo}}
}
\concept{GitHub functions}
