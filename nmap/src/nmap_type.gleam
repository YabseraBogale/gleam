pub type PortStatus{
    Open
    Closed
    Filtered
    UnFiltered
}

pub type Port{
    Port(
        port_id: Int,
        protocol: String,
        state: PortStatus,
        service: String,
    )
}

pub type Host{
    Host(
        address: String,
        status: String,
        ports: List(Port),
    )
}

pub type NmapResult{
    NmapResult(
        raw_output: String,
        hosts: List(Host),
    )
}

pub type NmapError{
    NmapNotFound
    ExecutionError(String)

}
