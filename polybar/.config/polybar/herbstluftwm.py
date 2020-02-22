import subprocess
import sys

# tag characters
tags = {'default': '', 'Web': '', 'Term': '', 'Media': '', 'Games': '', 'VM': ''}

# colors
color_exists = "#FFFFFF"
color_in_use = "#FF927E"
color_focused = "#F0544C"

def generate_output():
    current_tag = ""
    call_client = subprocess.Popen(['herbstclient tag_status'], shell=True, stdout=subprocess.PIPE)
    client_string = call_client.stdout.readline().decode("utf-8").split('\t')[1:][:-1]
    output_string = " "
    for i in client_string:
        if i[0] == ':':
            output_string = output_string + "%{F" + color_in_use + "}"
        elif i[0] == '#':
            output_string = output_string + "%{F" + color_focused + "}"
        elif i[0] == '.':
            output_string = output_string + "%{F" + color_exists + "}"
        if i[1:] in tags:
            output_string += tags[i[1:]]
        else:
            output_string += tags['default']
        output_string += '  '
    print(output_string)
    sys.stdout.flush()

generate_output()
get_data_command = "herbstclient -i tag_flags & herbstclient -i tag_changed"
proc = subprocess.Popen([get_data_command], shell=True, stdout=subprocess.PIPE)
while proc.poll() is None:
    output = proc.stdout.readline()
    output = output.decode("utf-8")
generate_output()
