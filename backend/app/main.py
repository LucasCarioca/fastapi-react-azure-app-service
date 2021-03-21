from fastapi import FastAPI

from .controllers.health import router as health_router
from .controllers.posts import router as posts_router
app = FastAPI()

app.include_router(health_router)
app.include_router(posts_router)
