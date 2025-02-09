% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Course.R
\docType{class}
\name{Course}
\alias{Course}
\title{Class to build a web-site with rmarkdown rendering functionalities.}
\format{
An \code{\link{R6Class}} generator object
}
\description{
The class generates a web-site based on the Rmd files in the directory 'site'. The directory has a flat structure 
and contains several categories of files:

\describe{
  \item{\strong{_site.yml}}{This file in YAML format describing the structure and the look of the site with menues and sub-menus.}
  \item{\strong{_schedule.yml}}{This file contains information about the course (see details).}
  \item{\strong{<module-name>.Rmd}}{These files contain the course material on a specific topic.}
  \item{\strong{_<name>.Rmd}}{These Rmd files can be re-used and are called from inside other Rmd files. They do not have a html 
  counterpart in the _site directory.}   
  \item{\strong{data and images}}{ These directories are copied into _site directory}
  \item{\strong{footer.html}}{Footer content for all pages.}
  \item{\strong{setup.R}}{This is needed if the individual Rmd files need to be generated inside RStudio using the 'knit' button.}
  \item{\strong{Styles.css}}{Stylesheet file for the appearance}
}

The files prefixed with \strong{_} will not be rendered and are for internal use.
}
\details{
The \strong{schedule} file has the following structure:

\preformatted{
   course:
       title: <course-title>
       start: <start-date>
       end: <end-date>
       exam: 
           date: <exam-date>
           time: <time-time>
           venue: <venue>
       slots:
           <slot-id>:
               title:  <session-title>
               subtitle: <session-subtitle>
               goal: <goals/description>
               date: <session-date>
               time: <session-time>
               venue: <venue>
               tasks : "yes | no"     
           <slot-id>:
               ...
}
}
\section{Methods}{

}

\examples{
rcourse <- Course$new()
rcourse$view()

}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-initialize_off}{\code{Course$initialize_off()}}
\item \href{#method-new}{\code{Course$new()}}
\item \href{#method-src}{\code{Course$src()}}
\item \href{#method-clear_nocode_html}{\code{Course$clear_nocode_html()}}
\item \href{#method-render_off}{\code{Course$render_off()}}
\item \href{#method-render}{\code{Course$render()}}
\item \href{#method-site}{\code{Course$site()}}
\item \href{#method-url}{\code{Course$url()}}
\item \href{#method-view}{\code{Course$view()}}
\item \href{#method-schedule}{\code{Course$schedule()}}
\item \href{#method-slots}{\code{Course$slots()}}
\item \href{#method-next_slot}{\code{Course$next_slot()}}
\item \href{#method-prev_slot}{\code{Course$prev_slot()}}
\item \href{#method-related}{\code{Course$related()}}
\item \href{#method-lstmod}{\code{Course$lstmod()}}
\item \href{#method-listing}{\code{Course$listing()}}
\item \href{#method-zip}{\code{Course$zip()}}
\item \href{#method-push}{\code{Course$push()}}
\item \href{#method-publish}{\code{Course$publish()}}
\item \href{#method-clean}{\code{Course$clean()}}
\item \href{#method-clone}{\code{Course$clone()}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-initialize_off"></a>}}
\if{latex}{\out{\hypertarget{method-initialize_off}{}}}
\subsection{Method \code{initialize_off()}}{
Instantiates a 'Course' object. It will load _schedule.yml 
and renders the site for the default course (see current tag in _schedule.yml)..
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$initialize_off(site = "site", ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{site}}{name of the course, create it if it does not exist, otherwise instantiate it.}

\item{\code{...}}{arguments to rmarkdown::render_site}

\item{\code{path_}}{course directory path.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-new"></a>}}
\if{latex}{\out{\hypertarget{method-new}{}}}
\subsection{Method \code{new()}}{
Builds a TheCourse instance based on the 'config.yml' file in the path 'dir'
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$new(path, config = "config.yml", site = "docs")}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{config}}{config-file name.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-src"></a>}}
\if{latex}{\out{\hypertarget{method-src}{}}}
\subsection{Method \code{src()}}{
Path to site's directory containing all Rmd files.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$src()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clear_nocode_html"></a>}}
\if{latex}{\out{\hypertarget{method-clear_nocode_html}{}}}
\subsection{Method \code{clear_nocode_html()}}{
clear generated nocode html file
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$clear_nocode_html()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render_off"></a>}}
\if{latex}{\out{\hypertarget{method-render_off}{}}}
\subsection{Method \code{render_off()}}{
Render the site only for modified Rmd's.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$render_off(clean = FALSE, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{clean}}{If true the clean the site first.}

\item{\code{...}}{arguments to rmarkdown::render_site}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-render"></a>}}
\if{latex}{\out{\hypertarget{method-render}{}}}
\subsection{Method \code{render()}}{
Render the site ( todo: only for modified Rmd's).
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$render(clean = FALSE, ...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{clean}}{...}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-site"></a>}}
\if{latex}{\out{\hypertarget{method-site}{}}}
\subsection{Method \code{site()}}{
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$site()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-url"></a>}}
\if{latex}{\out{\hypertarget{method-url}{}}}
\subsection{Method \code{url()}}{
Return the path to site's index.html
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$url()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-view"></a>}}
\if{latex}{\out{\hypertarget{method-view}{}}}
\subsection{Method \code{view()}}{
View the site in the browser.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$view()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-schedule"></a>}}
\if{latex}{\out{\hypertarget{method-schedule}{}}}
\subsection{Method \code{schedule()}}{
Course schedule from schedule.yml.    
#' @description Edit '_schedule.yml'. Render the pages by render() to enforce the changes.
schedule = function() {
  file.edit(file.path(self$src(),"_schedule.yml"))
},
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$schedule()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-slots"></a>}}
\if{latex}{\out{\hypertarget{method-slots}{}}}
\subsection{Method \code{slots()}}{
Returns the list of course slots. The data is taken from '_schedule.yml'.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$slots()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-next_slot"></a>}}
\if{latex}{\out{\hypertarget{method-next_slot}{}}}
\subsection{Method \code{next_slot()}}{
given the base name of the slot return the basename of the next  
slot from '_schedule.yml'.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$next_slot(base_name)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{base_name}}{the RMD file basename.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-prev_slot"></a>}}
\if{latex}{\out{\hypertarget{method-prev_slot}{}}}
\subsection{Method \code{prev_slot()}}{
given the base name of the slot return the basename of the previous  
slot from '_schedule.yml'.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$prev_slot(base_name)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{base_name}}{the RMD file basename.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-related"></a>}}
\if{latex}{\out{\hypertarget{method-related}{}}}
\subsection{Method \code{related()}}{
given the base name of the slot return the related slots from '_schedule.yml'.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$related(base_name)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{base_name}}{the RMD file basename.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-lstmod"></a>}}
\if{latex}{\out{\hypertarget{method-lstmod}{}}}
\subsection{Method \code{lstmod()}}{
Returns the list of modified files.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$lstmod()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-listing"></a>}}
\if{latex}{\out{\hypertarget{method-listing}{}}}
\subsection{Method \code{listing()}}{
Returns the list of files for zip archive.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$listing(set = "archive")}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{set}}{{archive, data}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-zip"></a>}}
\if{latex}{\out{\hypertarget{method-zip}{}}}
\subsection{Method \code{zip()}}{
Create a zip archive.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$zip(filename = "archive.zip", what = "arvhive")}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{filename}}{name of zip archive.}

\item{\code{what}}{{archive, data}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-push"></a>}}
\if{latex}{\out{\hypertarget{method-push}{}}}
\subsection{Method \code{push()}}{
clear generted files, i.e. site/
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$push(slot, server = "shark", server_dir = "/bam-export/crip")}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-publish"></a>}}
\if{latex}{\out{\hypertarget{method-publish}{}}}
\subsection{Method \code{publish()}}{
publish _site to remote site with rsync
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$publish(
  remote = NULL,
  remote_dir = "/bam-export",
  server = "shark",
  group = "5-A-SHARK_BioCentEXP"
)}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clean"></a>}}
\if{latex}{\out{\hypertarget{method-clean}{}}}
\subsection{Method \code{clean()}}{
clear generted files, i.e. site/
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$clean()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-clone"></a>}}
\if{latex}{\out{\hypertarget{method-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{Course$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
