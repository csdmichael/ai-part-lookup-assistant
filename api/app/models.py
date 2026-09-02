"""Request and response bodies. These also produce the OpenAPI schema."""
from typing import Literal, Optional

from pydantic import BaseModel, Field

AssistantStatus = Literal['new', 'in-progress', 'complete']
AssistantPriority = Literal['low', 'normal', 'high']


class AssistantCreate(BaseModel):
    title: str = Field(min_length=1, max_length=400)
    reference: str = Field(default="", max_length=200)
    status: AssistantStatus = 'new'
    priority: AssistantPriority = 'normal'


class AssistantUpdate(BaseModel):
    title: Optional[str] = Field(default=None, min_length=1, max_length=400)
    reference: Optional[str] = Field(default=None, max_length=200)
    status: Optional[AssistantStatus] = None
    priority: Optional[AssistantPriority] = None


class Assistant(AssistantCreate):
    id: int
