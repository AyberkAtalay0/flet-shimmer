from typing import Optional, Any
from flet.core.constrained_control import ConstrainedControl
from flet.core.control import OptionalNumber
from flet.core.types import ColorValue

class FletShimmer(ConstrainedControl):
    """
    FletShimmer Control
    """

    def __init__(
        self,
        width: OptionalNumber = None,
        height: OptionalNumber = None,
        base_color: Optional[ColorValue] = None,
        highlight_color: Optional[ColorValue] = None,
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

    def _get_control_name(self):
        return "flet_shimmer"
