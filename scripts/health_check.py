
import requests

url = "http://localhost:5000/metrics"

try:
    response = requests.get(url, timeout=3)
    print("Health Check Passed" if response.status_code == 200 else "Unhealthy response")
except Exception as e:
    print(f"Health Check Failed: {e}")
