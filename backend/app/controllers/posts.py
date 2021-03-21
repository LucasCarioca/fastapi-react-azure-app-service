from fastapi import APIRouter
from ..models.post import Post


router = APIRouter()

@router.get("/posts", tags=["posts"])
def get_all_items():
    return [
        Post(12345,"hello world"),
        Post(12346,"hello second"),
        Post(12347,"hello third")
    ]

@router.get("/posts/{item_id}", tags=["posts"])
def get_item_by_id(item_id: int):
    return Post(item_id, "hello world")