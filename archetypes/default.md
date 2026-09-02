+++
date = '{{ .Date }}'
draft = true
title = '{{ or (getenv "HUGO_TITLE") (replace .File.ContentBaseName "-" " " | title) }}'
showAuthor = true
authors = ['']
+++
