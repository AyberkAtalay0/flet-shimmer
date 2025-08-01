from typing import Optional, Any
from flet.core.constrained_control import ConstrainedControl
from flet.core.control import OptionalNumber
from flet.core.types import ColorValue

class Shimmer(ConstrainedControl):
    def __init__(
        self,
        width: OptionalNumber = None,
        height: OptionalNumber = None,
        base_color: Optional[ColorValue] = None,
        highlight_color: Optional[ColorValue] = None,
        enabled: Optional[bool] = True,
        direction: Optional[str] = "ltr",
        period_ms: Optional[int] = 1500,
        loop: Optional[int] = None,
        expand: Optional[bool] = False,
        opacity: OptionalNumber = None,
        tooltip: Optional[str] = None,
        visible: Optional[bool] = None,
        data: Any = None,
        left: OptionalNumber = None,
        top: OptionalNumber = None,
        right: OptionalNumber = None,
        bottom: OptionalNumber = None,
    ):
        super().__init__(
            opacity=opacity,
            tooltip=tooltip,
            visible=visible,
            data=data,
            left=left,
            top=top,
            right=right,
            bottom=bottom,
        )
        self.width = width
        self.height = height
        self.base_color = base_color
        self.highlight_color = highlight_color
        self.enabled = enabled
        self.direction = direction
        self.period_ms = period_ms
        self.loop = loop
        self.expand = expand

    def _get_control_name(self):
        return "flet_shimmer"
