import json


def get_response_data(path):
    with open('./control/controller.json', encoding='utf-8') as controller:
        json_object = json.loads(controller.read())

        for service in json_object['services']:
            for route in service['routes']:
                if route['path'] == path:
                    return route

        return None


def get_response_body(location):
    if location is not None:
        with open(location, encoding='utf-8') as body:
            return json.loads(body.read())
    return None
