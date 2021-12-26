FROM python:3.9

WORKDIR /usr/src/app

COPY . .
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple --no-cache-dir -r requirements.txt


CMD ["gunicorn", "app:app", "-c", "./gunicorn.conf.py"]
