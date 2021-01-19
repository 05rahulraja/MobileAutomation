import sys
from robot.api.deco import keyword
import os
from io import open
@keyword
def getBuildName():
    build_name = os.getenv("BROWSERSTACK_BUILD_NAME")
    return build_name
