import os
from app import app
from dotenv import load_dotenv
print("   My microblog app secret key is: " + os.getenv('SECRET_KEY'))