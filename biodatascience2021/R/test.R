# R 4.0.0 introduced the rw string literals using r"(....)"

x <- r"("some raw string" with unescaped double-quotes and unescaped \backslases)"
x

# In RStudio 1.3.959 it is not recognized
# In Rstudio 1.3.1056 (last running version on Renku 0.8.7), it is recognized by the diagnostic engine, but not correctly colorized
# In RStudio 1.4.1717, it is correctly recognized and colorized
