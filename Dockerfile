FROM python:3.7
ENV PATH /usr/local/bin:$PATH
ADD . /code
WORKDIR /code
RUN pip install -i https://pypi.douban.com/simple CMake
RUN pip install -r requirements.txt -i https://pypi.douban.com/simple
CMD python /code/api/api.py 
