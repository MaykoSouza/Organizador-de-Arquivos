
#!/bin/bash
#
#script que separa arquivos pela sua extensão, movendo os arquivos do diretório Downloads para outros diretórios conforme o tipo de arquivo.


#Buscando arquivos específicos com o comando find e armazenando a saída em uma variável
arquivosimg=$(find ~/Downloads -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.webp" -o -name "*.gif" -o -name "*.bmp") 2> /dev/null 
mv $arquivosimg ~/Imagens 2> /dev/null #Movendo a variável para um diretório específico 

arquivostxt=$(find ~/Downloads -name "*.doc" -o -name "*.txt" -o -name "*.xls" -o -name "*.pdf" -o -name "*.ppt" -o -name "*.docx" -o -name "*.xlsx" -o -name "*.html") 2> /dev/null
mv $arquivostxt ~/Documentos 2> /dev/null 
arquivosvid=$(find ~/Downloads -name "*.mp4" -o -name "*.avi" -o -name "*.mov" -o -name "*.mpeg" -o -name "*.rmvb" -o -name "*.mkv" -o -name "*.webm") 2> /dev/null
mv $arquivosvid ~/Vídeos 2> /dev/null

arquivosaud=$(find ~/Downloads -name "*.mp3" -o -name "*.aac" -o -name "*.wma" -o -name "*.ac3" -o -name "*.wav" -o -name "*.ogg") 2> /dev/null
mv $arquivosaud ~/Música 2> /dev/null


