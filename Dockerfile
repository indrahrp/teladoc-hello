FROM python:3.5
RUN pip install Flask==0.11.1
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /app
EXPOSE 80:5000
COPY app /app
CMD ["python", "app.py"] 
