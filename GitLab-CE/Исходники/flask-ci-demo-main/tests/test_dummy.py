# tests/test_dummy.py
import sys
import os
sys.path.insert(0, os.path.abspath(os.path.join(os.path.dirname(__file__), '..')))

from app import app

def test_index():
    tester = app.test_client()
    response = tester.get("/")
    assert response.status_code == 200
    assert "CI/CD" in response.data.decode('utf-8')
