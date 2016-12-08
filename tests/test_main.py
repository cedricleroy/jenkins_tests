import pytest
from core.core import calculate


def test_calculate():
    result = calculate(5)
    assert result == 10
