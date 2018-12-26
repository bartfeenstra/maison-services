# Generates a UUID.
function generate_uuid() {
    cmd = "uuidgen"
    cmd | getline uuid
    close(cmd)
    return uuid
}

{
    if ($0 ~ /^[^#].*_TOKEN=$/) {
        print $0generate_uuid()
    }
    else {
        print $0
    }
}
