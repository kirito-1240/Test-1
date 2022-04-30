FROM kirito-1240/Test-1:slim-buster

#clonning repo 
RUN git clone https://github.com/kirito-1240/Test-1.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install --no-cache-dir requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
