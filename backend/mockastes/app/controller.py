from . import jsonHandler
import time
from flask import Response, json


def get_response_for_route(path):
    route_data = jsonHandler.get_response_data(path)

    if route_data is None:
        return Response('path not found', status=404)
    else:
        time.sleep(route_data['delay'])
        body = jsonHandler.get_response_body(route_data['current_response'])

        return Response(response=json.dumps(body) if body is not None else None,
                        status=route_data['status'])
