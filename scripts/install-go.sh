# Install Go.
curl -L -O https://go.dev/dl/go${GOLANG_VERSION}.linux-${TARGETARCH}.tar.gz || exit 1
ls -la . || exit 1
tar -xzf go${GOLANG_VERSION}.linux-${TARGETARCH}.tar.gz || exit 1
mv go /usr/bin || exit 1
rm go${GOLANG_VERSION}.linux-${TARGETARCH}.tar.gz || exit 1
PATH="/usr/bin/go/bin:$PATH"

# Install Go tooling to support local Go extension.
go install github.com/uudashr/gopkgs/v2/cmd/gopkgs@latest
go install github.com/ramya-rao-a/go-outline@latest
go install github.com/cweill/gotests/gotests@latest
go install github.com/fatih/gomodifytags@latest
go install github.com/josharian/impl@latest
go install github.com/haya14busa/goplay/cmd/goplay@latest
go install github.com/go-delve/delve/cmd/dlv@latest
mv /root/go/bin/dlv /root/go/bin/dlv-dap
go install github.com/go-delve/delve/cmd/dlv@latest
go install honnef.co/go/tools/cmd/staticcheck@latest
go install golang.org/x/tools/gopls@latest
