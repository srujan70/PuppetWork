each ( $facts['Partitions'] ) | $key, $value | {
    notify { "${key}=${value['size']}": } 
    }