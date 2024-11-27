from fastapi import FastAPI
import random

app = FastAPI()

@app.get("/num")
def number_generation():
    return random.randrange(1,10)


@app.get("/")
def read_root():
    return {"message": "Welcome to FastAPI!"}