FROM python:3.9-slim
ENV PYTHONUNBUFFERED 1
EXPOSE 8000

# Creating working directory
RUN mkdir /exchange_api
WORKDIR /exchange_api

# Copying requirements
ADD src .

RUN pip install -r requirements.txt

RUN ["chmod", "+x", "infra/start.sh"]
CMD ["infra/start.sh"]
